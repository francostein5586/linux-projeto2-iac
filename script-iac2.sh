#!/bin/bash
echo "Configurando servidor web..."
echo " * Atualizando repositorios"
apt-get -qq update
apt-get -qq upgrade -y

echo " * Instalando dependencias"
apt-get -qq install apache2 -y
apt-get -qq install unzip -y

echo " * Baixando e implantando site"
wget -q -P /tmp/ https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -q /tmp/main.zip -d /tmp
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Script terminado..."
