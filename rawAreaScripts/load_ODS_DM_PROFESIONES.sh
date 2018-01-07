
# sqoop import --connect jdbc:mysql://172.17.0.1/ODS --driver com.mysql.jdbc.Driver --username load --password loadpwd --table ODS_DM_PROFESIONES --target-dir /kcbda/ODS_DM_PROFESIONES --as-avrodatafile -m 1

# La primera opción era cargarlo en formato AVRO, pero existe un problema con las versiones de las librerias de la sandbox que no lo permiten, por lo que la carga se queda como texto
#Cargamos la tabla entera de profesiones porque no es muy grande.

sqoop import --connect jdbc:mysql://172.17.0.1/ODS --driver com.mysql.jdbc.Driver --username load --password loadpwd --table ODS_DM_PROFESIONES --target-dir /kcbda/ODS_DM_PROFESIONES -m 1


