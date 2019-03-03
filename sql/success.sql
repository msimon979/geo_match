DROP TABLE IF EXISTS address_update;
CREATE TABLE "address_update" (
"npi" varchar(10),
"address_type_code" varchar(10),
"latitude" numeric,
"longitude" numeric
)
;

\COPY address_update from 'data/bulk_success.csv' CSV;

UPDATE address_update set address_type_code = '' WHERE address_type_code is null;

ALTER TABLE address_update add primary key(npi,address_type_code);

UPDATE public.cms_nppes_provider_address b
SET 
	latitude = a.latitude, longitude = a.longitude, lat_long_check = 'Y'
FROM 
	address_update a 
WHERE 
	b.npi = a.npi and b.address_type_code = a.address_type_code;

DROP TABLE IF EXISTS address_update;