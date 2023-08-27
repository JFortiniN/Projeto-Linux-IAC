#!/bin/bash

echo "Iniciando Script"

echo "criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd carlos -c "carlos adm" -m -s /bin/bash -p $(openssl passwd carlos123) -G GRP_ADM
useradd maria -c "maria adm" -m -s /bin/bash -p $(openssl passwd maria123) -G GRP_ADM
useradd joao -c "joao adm" -m -s /bin/bash -p $(openssl passwd joao123) -G GRP_ADM

useradd debora -c "debora adm" -m -s /bin/bash -p $(openssl passwd debora123) -G GRP_VEN
useradd sebastiana -c "sebastiana adm" -m -s /bin/bash -p $(openssl passwd sebastiana123) -G GRP_VEN
useradd roberto -c "robertoadm" -m -s /bin/bash -p $(openssl passwd roberto123) -G GRP_VEN

useradd josefina -c "josefina adm" -m -s /bin/bash -p $(openssl passwd josefina123) -G GRP_SEC
useradd amanda -c "amanda adm" -m -s /bin/bash -p $(openssl passwd amanda123) -G GRP_SEC
useradd rogerio -c "rogerio adm" -m -s /bin/bash -p $(openssl passwd rogerio123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluido"
