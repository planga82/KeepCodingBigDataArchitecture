
# La primera opción era cargarlo en formato AVRO (--as-avrodatafile option), pero existe un problema con las versiones de las librerias de la sandbox que no lo permiten, por lo que la carga se queda como texto
#Cargamos la tabla entera porque no es muy grande, ya esta filtrada a 200 registros.

sqoop import --connect jdbc:mysql://172.17.0.1/ODS --driver com.mysql.jdbc.Driver --username load --password loadpwd --table TMP_DIRECCIONES_CLIENTE_FILTRO --target-dir /kcbda/ODS_DM_DIRECCIONES -m 1


