-- Tabla de FECHAS
create external table if not exists mybasededatos.mytabla
(
	DATE_KEY		STRING,
	DATE_OF_WEEK	STRING,
	MONTH			STRING,
	YEAR			STRING,
	QUARTER			STRING,
	SEASON			STRING,
	WEEK_OF_YEAR	INT,
	HOLIDAY_FLAG	INT,
	IMPORTE			DOUBLE
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','  STORED AS TEXTFILE
location 's3://bucket-cliente-digital/data/digitalcustomer/dates/'
;
 

-- PROPERTIES

"skip.header.line.count"="1"		-- Number of rows omitted from top
"skip.footer.line.count"="0"		-- Number of rows omitted from bottom
"serialization.null.format"="null") -- Default value for null in HIVE. It is allowed to put any string




-- HIVE:  /opt/apache-hive-1.2.1-bin/bin/hive

-- Tabla de FECHAS
drop table ASI.COOKIES;
create external table if not exists ASI.COOKIES ( 
cookie                  string,
first_time              string,
refer                   string,
url                     string,
last_time               string,
num_servicios_movil_refer       bigint,
num_movil_refer         bigint,
num_aplicateca_refer    bigint,
num_presencia_internet_refer    bigint,
num_otro_prod_refer     bigint,
ind_recomienda          int   ,
dia_semana              string,
num_priv_home           bigint,
num_priv_atencion_cliente       bigint,
num_priv_contrasenya    bigint,

num_priv_office         bigint,
num_priv_conectividad   bigint,
num_priv_mcafee         bigint,
num_priv_adsl           bigint,
num_priv_servicios_movil        bigint,
num_priv_movil          bigint,
num_priv_presencia_internet     bigint,
num_priv_aplicateca     bigint,
num_priv_ficha          bigint,
num_priv_otro_prod      bigint,
num_priv_path_otro_seg  bigint,
num_texto1              bigint,

num_texto47             bigint,
opt_success             string
)
PARTITIONED BY (fecha string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION '/data/asi/cookies/' 
tblproperties ("serialization.null.format"="")
;






