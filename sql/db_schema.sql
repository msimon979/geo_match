DROP TABLE IF EXISTS ref_cms_nppes;
CREATE TABLE "ref_cms_nppes" (
"npi" text NOT NULL,
"entity_type_cd" text,
"replacement_npi" text,
"employer_id_num_ein" text,
"prov_org_name_legal_business_name" text,
"prov_last_name_legal_name" text,
"prov_first_name" text,
"prov_middle_name" text,
"prov_name_prefix_text" text,
"prov_name_suffix_text" text,
"prov_cred_text" text,
"prov_other_org_name" text,
"prov_other_org_name_type_cd" text,
"prov_other_last_name" text,
"prov_other_first_name" text,
"prov_other_middle_name" text,
"prov_other_name_prefix_text" text,
"prov_other_name_suffix_text" text,
"prov_other_cred_text" text,
"prov_other_last_name_type_cd" text,
"prov_first_line_business_mailing_address" text,
"prov_second_line_business_mailing_address" text,
"prov_business_mailing_address_city_name" text,
"prov_business_mailing_address_state_name" text,
"prov_business_mailing_address_postal_cd" text,
"prov_business_mailing_address_country_cd_if_outside_us" text,
"prov_business_mailing_address_phone_num" text,
"prov_business_mailing_address_fax_num" text,
"prov_first_line_business_practice_location_address" text,
"prov_second_line_business_practice_location_address" text,
"prov_business_practice_location_address_city_name" text,
"prov_business_practice_location_address_state_name" text,
"prov_business_practice_location_address_postal_cd" text,
"prov_business_practice_location_address_country_cd_if_outside_u" text,
"prov_business_practice_location_address_phone_num" text,
"prov_business_practice_location_address_fax_num" text,
"prov_enumeration_date" text,
"last_update_date" text,
"npi_deactivation_reason_cd" text,
"npi_deactivation_date" text,
"npi_reactivation_date" text,
"prov_gender_cd" text,
"auth_offcl_last_name" text,
"auth_offcl_first_name" text,
"auth_offcl_middle_name" text,
"auth_offcl_title_or_position" text,
"auth_offcl_phone_num" text,
"hc_prov_taxon_cd_1" text,
"prov_license_num_1" text,
"prov_license_num_state_cd_1" text,
"hc_prov_prim_taxon_switch_1" text,
"hc_prov_taxon_cd_2" text,
"prov_license_num_2" text,
"prov_license_num_state_cd_2" text,
"hc_prov_prim_taxon_switch_2" text,
"hc_prov_taxon_cd_3" text,
"prov_license_num_3" text,
"prov_license_num_state_cd_3" text,
"hc_prov_prim_taxon_switch_3" text,
"hc_prov_taxon_cd_4" text,
"prov_license_num_4" text,
"prov_license_num_state_cd_4" text,
"hc_prov_prim_taxon_switch_4" text,
"hc_prov_taxon_cd_5" text,
"prov_license_num_5" text,
"prov_license_num_state_cd_5" text,
"hc_prov_prim_taxon_switch_5" text,
"hc_prov_taxon_cd_6" text,
"prov_license_num_6" text,
"prov_license_num_state_cd_6" text,
"hc_prov_prim_taxon_switch_6" text,
"hc_prov_taxon_cd_7" text,
"prov_license_num_7" text,
"prov_license_num_state_cd_7" text,
"hc_prov_prim_taxon_switch_7" text,
"hc_prov_taxon_cd_8" text,
"prov_license_num_8" text,
"prov_license_num_state_cd_8" text,
"hc_prov_prim_taxon_switch_8" text,
"hc_prov_taxon_cd_9" text,
"prov_license_num_9" text,
"prov_license_num_state_cd_9" text,
"hc_prov_prim_taxon_switch_9" text,
"hc_prov_taxon_cd_10" text,
"prov_license_num_10" text,
"prov_license_num_state_cd_10" text,
"hc_prov_prim_taxon_switch_10" text,
"hc_prov_taxon_cd_11" text,
"prov_license_num_11" text,
"prov_license_num_state_cd_11" text,
"hc_prov_prim_taxon_switch_11" text,
"hc_prov_taxon_cd_12" text,
"prov_license_num_12" text,
"prov_license_num_state_cd_12" text,
"hc_prov_prim_taxon_switch_12" text,
"hc_prov_taxon_cd_13" text,
"prov_license_num_13" text,
"prov_license_num_state_cd_13" text,
"hc_prov_prim_taxon_switch_13" text,
"hc_prov_taxon_cd_14" text,
"prov_license_num_14" text,
"prov_license_num_state_cd_14" text,
"hc_prov_prim_taxon_switch_14" text,
"hc_prov_taxon_cd_15" text,
"prov_license_num_15" text,
"prov_license_num_state_cd_15" text,
"hc_prov_prim_taxon_switch_15" text,
"other_prov_id_1" text,
"other_prov_id_type_cd_1" text,
"other_prov_id_state_1" text,
"other_prov_id_issuer_1" text,
"other_prov_id_2" text,
"other_prov_id_type_cd_2" text,
"other_prov_id_state_2" text,
"other_prov_id_issuer_2" text,
"other_prov_id_3" text,
"other_prov_id_type_cd_3" text,
"other_prov_id_state_3" text,
"other_prov_id_issuer_3" text,
"other_prov_id_4" text,
"other_prov_id_type_cd_4" text,
"other_prov_id_state_4" text,
"other_prov_id_issuer_4" text,
"other_prov_id_5" text,
"other_prov_id_type_cd_5" text,
"other_prov_id_state_5" text,
"other_prov_id_issuer_5" text,
"other_prov_id_6" text,
"other_prov_id_type_cd_6" text,
"other_prov_id_state_6" text,
"other_prov_id_issuer_6" text,
"other_prov_id_7" text,
"other_prov_id_type_cd_7" text,
"other_prov_id_state_7" text,
"other_prov_id_issuer_7" text,
"other_prov_id_8" text,
"other_prov_id_type_cd_8" text,
"other_prov_id_state_8" text,
"other_prov_id_issuer_8" text,
"other_prov_id_9" text,
"other_prov_id_type_cd_9" text,
"other_prov_id_state_9" text,
"other_prov_id_issuer_9" text,
"other_prov_id_10" text,
"other_prov_id_type_cd_10" text,
"other_prov_id_state_10" text,
"other_prov_id_issuer_10" text,
"other_prov_id_11" text,
"other_prov_id_type_cd_11" text,
"other_prov_id_state_11" text,
"other_prov_id_issuer_11" text,
"other_prov_id_12" text,
"other_prov_id_type_cd_12" text,
"other_prov_id_state_12" text,
"other_prov_id_issuer_12" text,
"other_prov_id_13" text,
"other_prov_id_type_cd_13" text,
"other_prov_id_state_13" text,
"other_prov_id_issuer_13" text,
"other_prov_id_14" text,
"other_prov_id_type_cd_14" text,
"other_prov_id_state_14" text,
"other_prov_id_issuer_14" text,
"other_prov_id_15" text,
"other_prov_id_type_cd_15" text,
"other_prov_id_state_15" text,
"other_prov_id_issuer_15" text,
"other_prov_id_16" text,
"other_prov_id_type_cd_16" text,
"other_prov_id_state_16" text,
"other_prov_id_issuer_16" text,
"other_prov_id_17" text,
"other_prov_id_type_cd_17" text,
"other_prov_id_state_17" text,
"other_prov_id_issuer_17" text,
"other_prov_id_18" text,
"other_prov_id_type_cd_18" text,
"other_prov_id_state_18" text,
"other_prov_id_issuer_18" text,
"other_prov_id_19" text,
"other_prov_id_type_cd_19" text,
"other_prov_id_state_19" text,
"other_prov_id_issuer_19" text,
"other_prov_id_20" text,
"other_prov_id_type_cd_20" text,
"other_prov_id_state_20" text,
"other_prov_id_issuer_20" text,
"other_prov_id_21" text,
"other_prov_id_type_cd_21" text,
"other_prov_id_state_21" text,
"other_prov_id_issuer_21" text,
"other_prov_id_22" text,
"other_prov_id_type_cd_22" text,
"other_prov_id_state_22" text,
"other_prov_id_issuer_22" text,
"other_prov_id_23" text,
"other_prov_id_type_cd_23" text,
"other_prov_id_state_23" text,
"other_prov_id_issuer_23" text,
"other_prov_id_24" text,
"other_prov_id_type_cd_24" text,
"other_prov_id_state_24" text,
"other_prov_id_issuer_24" text,
"other_prov_id_25" text,
"other_prov_id_type_cd_25" text,
"other_prov_id_state_25" text,
"other_prov_id_issuer_25" text,
"other_prov_id_26" text,
"other_prov_id_type_cd_26" text,
"other_prov_id_state_26" text,
"other_prov_id_issuer_26" text,
"other_prov_id_27" text,
"other_prov_id_type_cd_27" text,
"other_prov_id_state_27" text,
"other_prov_id_issuer_27" text,
"other_prov_id_28" text,
"other_prov_id_type_cd_28" text,
"other_prov_id_state_28" text,
"other_prov_id_issuer_28" text,
"other_prov_id_29" text,
"other_prov_id_type_cd_29" text,
"other_prov_id_state_29" text,
"other_prov_id_issuer_29" text,
"other_prov_id_30" text,
"other_prov_id_type_cd_30" text,
"other_prov_id_state_30" text,
"other_prov_id_issuer_30" text,
"other_prov_id_31" text,
"other_prov_id_type_cd_31" text,
"other_prov_id_state_31" text,
"other_prov_id_issuer_31" text,
"other_prov_id_32" text,
"other_prov_id_type_cd_32" text,
"other_prov_id_state_32" text,
"other_prov_id_issuer_32" text,
"other_prov_id_33" text,
"other_prov_id_type_cd_33" text,
"other_prov_id_state_33" text,
"other_prov_id_issuer_33" text,
"other_prov_id_34" text,
"other_prov_id_type_cd_34" text,
"other_prov_id_state_34" text,
"other_prov_id_issuer_34" text,
"other_prov_id_35" text,
"other_prov_id_type_cd_35" text,
"other_prov_id_state_35" text,
"other_prov_id_issuer_35" text,
"other_prov_id_36" text,
"other_prov_id_type_cd_36" text,
"other_prov_id_state_36" text,
"other_prov_id_issuer_36" text,
"other_prov_id_37" text,
"other_prov_id_type_cd_37" text,
"other_prov_id_state_37" text,
"other_prov_id_issuer_37" text,
"other_prov_id_38" text,
"other_prov_id_type_cd_38" text,
"other_prov_id_state_38" text,
"other_prov_id_issuer_38" text,
"other_prov_id_39" text,
"other_prov_id_type_cd_39" text,
"other_prov_id_state_39" text,
"other_prov_id_issuer_39" text,
"other_prov_id_40" text,
"other_prov_id_type_cd_40" text,
"other_prov_id_state_40" text,
"other_prov_id_issuer_40" text,
"other_prov_id_41" text,
"other_prov_id_type_cd_41" text,
"other_prov_id_state_41" text,
"other_prov_id_issuer_41" text,
"other_prov_id_42" text,
"other_prov_id_type_cd_42" text,
"other_prov_id_state_42" text,
"other_prov_id_issuer_42" text,
"other_prov_id_43" text,
"other_prov_id_type_cd_43" text,
"other_prov_id_state_43" text,
"other_prov_id_issuer_43" text,
"other_prov_id_44" text,
"other_prov_id_type_cd_44" text,
"other_prov_id_state_44" text,
"other_prov_id_issuer_44" text,
"other_prov_id_45" text,
"other_prov_id_type_cd_45" text,
"other_prov_id_state_45" text,
"other_prov_id_issuer_45" text,
"other_prov_id_46" text,
"other_prov_id_type_cd_46" text,
"other_prov_id_state_46" text,
"other_prov_id_issuer_46" text,
"other_prov_id_47" text,
"other_prov_id_type_cd_47" text,
"other_prov_id_state_47" text,
"other_prov_id_issuer_47" text,
"other_prov_id_48" text,
"other_prov_id_type_cd_48" text,
"other_prov_id_state_48" text,
"other_prov_id_issuer_48" text,
"other_prov_id_49" text,
"other_prov_id_type_cd_49" text,
"other_prov_id_state_49" text,
"other_prov_id_issuer_49" text,
"other_prov_id_50" text,
"other_prov_id_type_cd_50" text,
"other_prov_id_state_50" text,
"other_prov_id_issuer_50" text,
"is_sole_proprietor" text,
"is_org_subpart" text,
"parent_org_lbn" text,
"parent_org_tin" text,
"auth_offcl_name_prefix_text" text,
"auth_offcl_name_suffix_text" text,
"auth_offcl_cred_text" text,
"hc_prov_taxon_group_1" text,
"hc_prov_taxon_group_2" text,
"hc_prov_taxon_group_3" text,
"hc_prov_taxon_group_4" text,
"hc_prov_taxon_group_5" text,
"hc_prov_taxon_group_6" text,
"hc_prov_taxon_group_7" text,
"hc_prov_taxon_group_8" text,
"hc_prov_taxon_group_9" text,
"hc_prov_taxon_group_10" text,
"hc_prov_taxon_group_11" text,
"hc_prov_taxon_group_12" text,
"hc_prov_taxon_group_13" text,
"hc_prov_taxon_group_14" text,
"hc_prov_taxon_group_15" text,
PRIMARY KEY ("npi")
)
;

\copy ref_cms_nppes FROM 'npi_nppes_data_r201610_cut.csv' delimiter ',' CSV HEADER; 

DROP TABLE IF EXISTS cms_nppes_provider_address CASCADE;
CREATE TABLE "cms_nppes_provider_address" (
"npi" varchar(10) NOT NULL,
"address_type_code" varchar(10) NOT NULL,
"first_line" varchar(100),
"second_line" varchar(100),
"city_name" varchar(50),
"state_name" varchar(50),
"postal_code" varchar(20),
"country_code" varchar(2),
"telephone_number" varchar(20),
"fax_number" varchar(20),
"latitude" numeric,
"longitude" numeric,
"lat_long_check" boolean,
PRIMARY KEY ("npi", "address_type_code"),
UNIQUE("npi") 
)
;

INSERT INTO cms_nppes_provider_address(	
	npi,
	address_type_code,
	first_line,
	second_line,
	city_name,
	state_name,
	postal_code,
	country_code,
	telephone_number,
	fax_number)
SELECT 
	npi,
	entity_type_cd,
	prov_first_line_business_mailing_address,
	prov_second_line_business_mailing_address,
	prov_business_mailing_address_city_name,
	prov_business_mailing_address_state_name,
	prov_business_mailing_address_postal_cd,
	prov_business_mailing_address_country_cd_if_outside_us,
	prov_business_mailing_address_phone_num,
	prov_business_mailing_address_fax_num
FROM 
	ref_cms_nppes;

DROP TABLE IF EXISTS cms_nppes_provider_licenses CASCADE;
CREATE TABLE "cms_nppes_provider_licenses" (
"npi" varchar(10) NOT NULL,
"sequence_number" int4,
"provider_license_number" varchar(20),
"provider_license_number_state_code" varchar(2),
"healthcare_provider_taxonomy_code" varchar(10),
"healthcare_provider_taxonomy_switch" varchar(1),
PRIMARY KEY ("npi") 
)
;

INSERT INTO cms_nppes_provider_licenses
SELECT
	npi,
	cast(npi as int4),
	prov_license_num_1,
	prov_license_num_state_cd_1,
	hc_prov_taxon_cd_1,
	hc_prov_prim_taxon_switch_1
FROM
	ref_cms_nppes;	


DROP TABLE IF EXISTS cms_nppes_provider_taxonomy_group CASCADE;
CREATE TABLE "cms_nppes_provider_taxonomy_group" (
"npi" varchar(10) NOT NULL,
"sequence_number" int4 NOT NULL,
"healthcare_provider_taxonomy_group" varchar(100),
PRIMARY KEY ("npi", "sequence_number"),
UNIQUE("npi")
)
;

INSERT INTO cms_nppes_provider_taxonomy_group
SELECT
	npi,
	cast(npi as int4),
	hc_prov_taxon_group_1
FROM
	ref_cms_nppes;


DROP TABLE IF EXISTS cms_nppes CASCADE;
CREATE TABLE "cms_nppes" (
"npi" varchar(10) NOT NULL,
"entity_type_code" varchar(1),
"npi_deactivation_reason_code" varchar(2),
"npi_deactivation_date" date,
"npi_reactivation_date" date,
"replacemant_npi" varchar(10),
"employer_identification_number" varchar(10),
"is_sole_proprietor" bool,
"is_org_subpart" bool,
"parent_org_lnb" varchar(100),
"parent_org_tin" varchar(9),
"provider_org_name" varchar(100),
"provider_other_organization_name" varchar(100),
"provider_other_organization_name_type_code" varchar(1),
"provider_last_name" varchar(50),
"provider_first_name" varchar(50),
"provider_middle_name" varchar(50),
"provider_name_prefix" varchar(10),
"provider_name_suffix" varchar(10),
"provider_credential" varchar(50),
"provider_other_last_name" varchar(50),
"provider_other_first_name" varchar(50),
"provider_other_middle_name" varchar(50),
"provider_other_name_prefix" varchar(10),
"provider_other_name_suffix" varchar(10),
"provider_other_credential" varchar(50),
"provider_other_name_type_code" varchar(1),
"providre_gender_code" varchar(1),
"provider_enumeration_date" date,
"last_update_date" date,
"authorizing_official_last_name" varchar(50),
"authorizing_official_first_name" varchar(50),
"authorizing_official_middle_name" varchar(50),
"authorizing_official_name_prefix" varchar(10),
"authorizing_official_name_suffix" varchar(10),
"authorizing_official_title_or_position" varchar(50),
"authorizing_official_telephone_number" varchar(20),
"authorizing_official_credential" varchar(20),
PRIMARY KEY ("npi") ,
CONSTRAINT "fk_cms_nppes_cms_nppes_provider_licenses_1" FOREIGN KEY ("npi") REFERENCES "cms_nppes_provider_licenses" ("npi"),
CONSTRAINT "fk_cms_nppes_cms_nppes_provider_address_1" FOREIGN KEY ("npi") REFERENCES "cms_nppes_provider_address" ("npi"),
CONSTRAINT "fk_cms_nppes_cms_nppes_provider_taxonomy_group_1" FOREIGN KEY ("npi") REFERENCES "cms_nppes_provider_taxonomy_group" ("npi"),
UNIQUE("provider_first_name")
)
;

INSERT INTO cms_nppes
SELECT
	npi,
	entity_type_cd,
	npi_deactivation_reason_cd,
	case when npi_deactivation_date = '' then null else cast(npi_deactivation_date as date) end,
	case when npi_reactivation_date = '' then null else cast(npi_reactivation_date as date) end,
	replacement_npi,
	employer_id_num_ein,
	case when is_sole_proprietor = '' then null when is_sole_proprietor = 'X' then is_sole_proprietor = 'Y' else cast(is_sole_proprietor as boolean) end,
	case when is_org_subpart = '' then null else cast(is_org_subpart as boolean) end,
	parent_org_lbn,
	parent_org_tin,
	prov_org_name_legal_business_name,
	prov_other_org_name,
	prov_other_org_name_type_cd,
	prov_last_name_legal_name,
	npi,
	prov_middle_name,
	prov_name_prefix_text,
	prov_name_suffix_text,
	prov_cred_text,
	prov_other_last_name,
	prov_other_first_name,
	prov_other_middle_name,
	prov_other_name_prefix_text,
	prov_other_name_suffix_text,
	prov_other_cred_text,
	prov_other_last_name_type_cd,
	prov_gender_cd,
	case when prov_enumeration_date = '' then null else cast(prov_enumeration_date as date) end,
	case when last_update_date = '' then null else cast(last_update_date as date) end,
	auth_offcl_last_name,
	auth_offcl_first_name,
	auth_offcl_middle_name,
	auth_offcl_name_prefix_text,
	auth_offcl_name_suffix_text,
	auth_offcl_title_or_position,
	auth_offcl_phone_num,
	auth_offcl_cred_text
FROM
	ref_cms_nppes;


DROP TABLE IF EXISTS cms_nppes_provider_other_identity;
CREATE TABLE "cms_nppes_provider_other_identity" (
"npi" varchar(10) NOT NULL,
"sequence_number" int4 NOT NULL,
"provider_other_identification" varchar(20),
"provider_other_identification_type_code" varchar(2),
"provider_other_identification_state_code" varchar(2),
"provider_other_identification_issuer" varchar(100),
PRIMARY KEY ("npi", "sequence_number") ,
CONSTRAINT "fk_cms_nppes_provider_other_identity_cms_nppes_1" FOREIGN KEY ("npi") REFERENCES "cms_nppes" ("provider_first_name")
)
;


