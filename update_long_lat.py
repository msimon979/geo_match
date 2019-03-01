#!/usr/bin/env python
import argparse
import requests
import psycopg2


parser = argparse.ArgumentParser()
parser.add_argument('--records', help='amount of records to be updated')
args = parser.parse_args()

if args.records is None:
	print('add records amount with --records NUM')

#conn = psycopg2.connect("dbname='geo' host='localhost'")
#cur = conn.cursor()
#cur.execute("""SELECT * from public.cms_nppes_provider_address where long is null and lat is null limit %s""" % ())
#rows = cur.fetchall()
#rows[0]


#cur.close()
#conn.commit()





#r = requests.get('https://maps.googleapis.com/maps/api/geocode/json?address=1001,randolph,arlington,va&key=AIzaSyAgcXQF_OYqmBAOV_xQgeYNkBV0jse1Ajc')
#r.status_code
## OKAY | ZERO_RESULTS | INVALID_REQUEST
#r.json()['status']



# if __name__ == "__main__":
#     sys.exit(main())
