#!/bin/bash

echo "Criando o diretório publico..."

mkdir /publico

echo "Especificando o dono e as permissões do diretório publico"

chown root /publico
chmod 777 /publico

echo "Criando o diretório adm..."

mkdir /adm

echo "Especificando o dono e as permissões do diretório adm"

chown root:GRP_ADM /adm
chmod 770 /adm

echo "Criando o diretório ven..."

mkdir /ven

echo "Especificando o dono e as permissões do diretório ven"

chown root:GRP_VEN /ven
chmod 770 /ven

echo "Criando o diretório sec..."

mkdir /sec

echo "Especificando o dono e as permissões do diretório sec"

chown root:GRP_SEC /sec
chmod 770 /sec
