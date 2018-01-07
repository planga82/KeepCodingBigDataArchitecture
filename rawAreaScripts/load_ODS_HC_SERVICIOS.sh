# Antes de cargar con scoop, heneramos una tabla temporl de servicios con menos filas

# create table ODS_HC_SERVICIOS_TMP as
# select SER.ID_SERVICIO,SER.ID_CLIENTE,SER.ID_PRODUCTO,SER.PUNTO_ACCESO,SER.ID_AGENTE,CAN.DE_CANAL,SER.FC_INSERT,SER.FC_MODIFICACION
# from ODS.ODS_HC_SERVICIOS SER
# inner join ODS.ODS_DM_CANALES CAN on CAN.ID_CANAL = SER.ID_CANAL 
# where true
# order by ID_CLIENTE limit 200;

# La primera opción era cargarlo en formato AVRO (--as-avrodatafile option), pero existe un problema con las versiones de las librerias de la sandbox que no lo permiten, por lo que la carga se queda como texto


sqoop import --connect jdbc:mysql://172.17.0.1/ODS --driver com.mysql.jdbc.Driver --username load --password loadpwd --table ODS_HC_SERVICIOS_TMP --target-dir /kcbda/ODS_HC_SERVICIOS -m 1


