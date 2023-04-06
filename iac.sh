#!/bin/bash

echo "atualiando sistema"

apt update -y
apt upgrade -y

echo "baixando servidor apache e unzip"
apt install apache2 -y
apt install unzip -y

echo "desconpaquitando arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip linux-site-dio-main.zip

echo "copiando arquivos"
cd /linux-site-dio-main
cp -R * /var/www/html/

echo "finalizado"

