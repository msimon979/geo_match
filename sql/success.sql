DROP TABLE IF EXISTS address_update;
CREATE TABLE "address_update" (
"npi" varchar(10) NOT NULL,
"address_type_code" varchar(10) NOT NULL,
"latitude" numeric,
"longitude" numeric,
PRIMARY KEY ("npi", "address_type_code")
)
;

\COPY address_update from 'data/bulk_success.csv' CSV;

UPDATE public.cms_nppes_provider_address b
SET 
	latitude = a.latitude, longitude = a.longitude, lat_long_check = 'Y'
FROM 
	address_update a 
WHERE 
	b.npi = a.npi and b.address_type_code = a.address_type_code;

DROP TABLE IF EXISTS address_update;
