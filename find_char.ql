CREATE TABLE IF NOT EXISTS temporal.hyb_customers_1 AS
	SELECT * FROM	
	(
		SELECT 
			CODIGOUSUARIO,
			regexp_extract(REGEXP_REPLACE(TRIM(EMAIL),'"', ''), '^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,4})$', 0) as EMAIL,
			regexp_extract(REGEXP_REPLACE(TRIM(TEMPEMAIL),'"', ''), '^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,4})$', 0) as TEMPEMAIL,
			1 as IS_ON, 
			SEXO as SEXO_ID,				
			NUMMIEMBROSHOGAR as MIEMBROS_HOGAR_ID,
			case when instr(FECHANACIMIENTO, "/")>0 then concat(SUBSTR(FECHANACIMIENTO, 7, 4),"-",SUBSTR(FECHANACIMIENTO, 4, 2),"-",SUBSTR(FECHANACIMIENTO, 1, 2)) else SUBSTR(FECHANACIMIENTO, 1, 10) end AS FECHA_NAC_ID,
			case when instr(FECHAALTA, "/")>0 then concat(SUBSTR(FECHAALTA, 7, 4),"-",SUBSTR(FECHAALTA, 4, 2),"-",SUBSTR(FECHAALTA, 1, 2)) else SUBSTR(FECHAALTA, 1, 10) end AS FECHA_ALTA_ID,
			NULL as FECHA_PRIMERA_ID,
			case when instr(FECHAULTACCESO, "/")>0 then concat(SUBSTR(FECHAULTACCESO, 7, 4),"-",SUBSTR(FECHAULTACCESO, 4, 2),"-",SUBSTR(FECHAULTACCESO, 1, 2)) else SUBSTR(FECHAULTACCESO, 1, 10) end AS FECHA_ULTIMA_ID,
			TIENDASCODIGO AS TIENDA_PPAL_ID,
			NOMBRE,
			APELLIDO1 as APELLIDO_1,
			APELLIDO2 as APELLIDO_2,
			case when TIPODOCUMENTO="NIE" then NUMDOCUMENTO else "" end as DNI,
			CODIGOPOSTAL AS COD_POSTAL_ID
		from hybris.usuarios 
	) A
	where  a.email <> "" AND a.TEMPEMAIL <> ""
	; 
