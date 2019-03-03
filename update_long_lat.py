#!/usr/bin/env python
import argparse
import requests
import psycopg2
import sys
import logging
import subprocess
from time import strftime

cur_time = strftime("%Y-%m-%d_%H:%M:%S")
logging.basicConfig(filename='logs/%s' % cur_time, level=logging.DEBUG)
conn = psycopg2.connect("dbname='geo' host='localhost'")
cur = conn.cursor()
bulk_list = []

def format_address(rows):
	address = []
	for row in rows:
		npi = row[0]
		atc = row[1] 
		s = ''
		for part in row:
			if part == '' or part == npi or part == atc: 
				continue
			s += str(part.replace(" ","+")) + ','
		address.append([npi, atc, s])

	return address

def retrieve_rows(records):
	cur.execute(
		"""
		SELECT
			npi,
			address_type_code,
			first_line, 
			second_line, 
			city_name, 
			state_name, 
			case when postal_code is null or postal_code = '' then '' else substring(postal_code,1,5) end
		FROM public.cms_nppes_provider_address 
		WHERE 
			latitude is NULL AND longitude is 
			NULL and lat_long_check is null LIMIT %s
		""" % (records)
	)

	rows = cur.fetchall()
	address = format_address(rows)
	return address

def instant_update(npi, atc, r):
	cur.execute(
		"""
		UPDATE public.cms_nppes_provider_address
		SET 
			latitude = %s, longitude = %s, lat_long_check = 'Y'
		WHERE 
			npi = '%s' and address_type_code = '%s'
		""" % (r['lat'], r['lng'], npi, atc)
	)
	conn.commit()

def bulk_update():
	s= open("data/bulk_success.csv","w")
	f= open("data/bulk_fail.csv","w")
	for result in bulk_list:
		if result[-1] == 200:
			s.write('%s,%s,%s,%s\r\n' % (result[0], 
										 result[1], 
										 result[2]['lat'], 
										 result[2]['lng']))
		else:
			print(result)
			print(result[0])
			f.write('%s,%s\r\n' % (result[0],
								   result[1]))

	s.close()
	f.close()
	
	subprocess.call('./load_bulk.sh')
	subprocess.call(['rm','data/bulk_success.csv'])
	subprocess.call(['rm','data/bulk_fail.csv'])


def set_checker(npi, atc):
	cur.execute(
		"""
		UPDATE public.cms_nppes_provider_address
		SET 
			lat_long_check = 'Y'
		WHERE 
			npi = '%s' and address_type_code = '%s'
		""" % (npi, atc)
	)
	conn.commit()

def parse_result(r, npi, atc):
	if r.status_code == 200:
		if r.json()['status'] == 'OK':
			if r.json()['results'][0]['geometry']['location']:
				return r.json()['results'][0]['geometry']['location'], 200
		else:
			logging.info('%s had a 200 response code but failed because of %s' % (npi, r.json()['status']))
			return None, r.json()['status']
	else:
		logging.warning(str(npi) + ' ' + r.json()['status'])
		return None, r.json()['status']

def geo_api(address_list, update_value):
	for address in address_list:
		npi = address[0]
		atc = address[1]
	
		r = requests.get('https://maps.googleapis.com/maps/api/geocode/json?address=%s&key=AIzaSyDfmIkdDyE4EMUw1uWMXxBUPv2beFlKlJg' % address)
		result, status = parse_result(r, npi, atc)
		
		if update_value == 'instant':
			if status:
				set_checker(npi, atc)
			else:
				instant_update(npi, atc, result)
		else:
			bulk_list.append([npi, atc, result, status])

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('--records', help='amount of records to be updated')
	parser.add_argument('--instant', const=1, nargs= '?', help='update database in real time')
	parser.add_argument('--bulk', const=1, nargs= '?', help='bulk update database')
	args = parser.parse_args()

	if args.records is None:
		print('add records amount with --records NUM')
		exit()
	if args.instant is None and args.bulk is None:
		print('need to pass either --instant or --bulk')
		exit()
	if args.instant and args.bulk:
		print('need to pass one update choice')
		exit()
	
	if args.instant:
		update_value = 'instant'
	else:
		update_value = 'bulk'

	address_list = retrieve_rows(args.records)
	geo_api(address_list, update_value)

	if bulk_list:
		bulk_update()

	cur.close()

if __name__ == "__main__":
    sys.exit(main())
