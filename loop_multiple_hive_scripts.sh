#!/bin/bash
# 1-Copy file from EC2 to CLuster: 
#	hadoop distcp  s3://bucket-cliente-digital-workspace/code/scripts/code/auditClubdia_nulls.sh /home/hadoop/scripts/auditClubdia_nulls.sh
# 2- Parameters
#	tabla: Table to explore
#	Loop var: all variables from table	


# Create table to insert outcomes
hive -e "CREATE DATABASE IF NOT EXISTS audit;"

hive -e "DROP TABLE  audit.club;"

hive -e "CREATE TABLE IF NOT EXISTS audit.club( \
TABLA           STRING, \
ACCION        STRING , \
VALOR           INT) \
row format delimited fields terminated by '|' ;"



# Tabla ARTICULOS

export tabla=ARTICULOS 
echo ------------------------------------------------------------
echo ---------------------INICIO: $tabla ------------------------
echo ------------------------------------------------------------
for var in CODIGO EAN FAMILIAS_CODIGO RANKING SECCIONES_CODIGO SUB_FAMILIAS TIPO_MARCA UNIDAD_MEDIDA    
do                     
		echo ----------- Calculando distinct $tabla $var -----------
				
		hive -d tabla='$tabla' -d var=$var -e \
		"INSERT INTO TABLE audit.club SELECT '${tabla}', \
		'nulls ${var}', \
		count(1) \
		from  clubdia.${tabla} where ${var} is null;"
done
echo ------------------------------------------------------------
echo ----------------------FIN:  tabla --------------------------
echo ------------------------------------------------------------

