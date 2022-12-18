#!/bin/bash

echo " Atualizando arquivos do servidor!!"

apt-get update
apt-get upgrade -y

echo "Servidor atualizado com sucesso!!"


echo "Instalando o Apache2 e winrar"

apt-get install apache2 -y
apt-get install unzip -y

echo "Apache e Winrar instalado com sucesso!!"


echo " Baixando aplicação e descompactando!"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/heads/main.zip
unzip main.zip

echo "aplicação baixada e descompactada com sucesso!!"

echo "Copiando os arquivos da aplicação para o diretorio do apache ..."

cd /linux-site-dio-heads-main
cp -R * /var/www/html/

echo "Arquivos copiados com sucesso!!"




