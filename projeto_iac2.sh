#!/bin/bash

echo "Atualizando o servidor....."

apt-get update
apt-get upgrade -y

echo "Instalando softwares......"

apt-get install apache2 -y
apt-get install unzip -y


echo "baixando arquivo da aplicação"
 
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo...."

unzip main.zip
cd linux-site-dio-main

echo "copiando arquivos para pasta padrão do apache"


cp -R * /var/www/html/

echo "Finalizado!!!"

