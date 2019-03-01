#!/usr/bin/env python
import argparse
import requests
import psycopg2
import sys
import logging

def format_address(rows):
	address = []
	for row in rows:
		s = ''
		for part in row:
			if part == '':
				continue
			s += str(part.replace(" ","+")) + ','
		address.append(s)

	return address

def retrieve_rows(records):
	conn = psycopg2.connect("dbname='geo' host='localhost'")
	cur = conn.cursor()
	cur.execute(
		"""
		SELECT
			first_line, 
			second_line, 
			city_name, 
			state_name, 
			case when postal_code is null or postal_code = '' then '' else substring(postal_code,1,5) end
		FROM public.cms_nppes_provider_address 
			WHERE latitude is NULL AND longitude is 
			NULL LIMIT %s
		""" % (records)
	)

	rows = cur.fetchall()
	cur.close()
	address = format_address(rows)
	return address

def geo_api(address_list):
	for address in address_list:
		# r = requests.get('https://maps.googleapis.com/maps/api/geocode/json?address=%s&key=AIzaSyAgcXQF_OYqmBAOV_xQgeYNkBV0jse1Ajc' % address)
		print('https://maps.googleapis.com/maps/api/geocode/json?address=%s&key=AIzaSyAgcXQF_OYqmBAOV_xQgeYNkBV0jse1Ajc' % address)


def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('--records', help='amount of records to be updated')
	args = parser.parse_args()

	if args.records is None:
		print('add records amount with --records NUM')
		exit()
	
	address_list = retrieve_rows(args.records)
	api_results = geo_api(address_list)
	
	# logging.basicConfig(filename='example.log',level=logging.DEBUG)
	# logging.debug('This message should go to the log file')
	# logging.info('So should this')
	# logging.warning('And this, too')

	

#conn.commit()





#r = requests.get('https://maps.googleapis.com/maps/api/geocode/json?address=1001,randolph,arlington,va&key=AIzaSyAgcXQF_OYqmBAOV_xQgeYNkBV0jse1Ajc')
#r.status_code
## OKAY | ZERO_RESULTS | INVALID_REQUEST
#r.json()['status']

if __name__ == "__main__":
    sys.exit(main())
