#!/bin/bash

echo "Criando diretórios..."

cd /
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico 

echo "Diretórios criados com sucesso!!!"

echo "Criando grupos..."
echo"_____________________________________"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo"_____________________________________"
echo "Grupos Criados com sucesso!!!"

echo "Criando usuarios..." 
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Usuarios criados com sucesso!!!"

echo "Adicionando permissões de usuario e grupos aos diretorios..."
echo"_______________________________________"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 
echo"______________________________________"
echo "Permissões adicionadas aos diretroios com sucesso!!!"

