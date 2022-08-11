#!/bin/bash
#Autor: Eudes Paz (eudespaz@live.com)
#11/08/2022

echo "CRIANDO USUARIO LINUX"

read -p "DIGITE O NOME DO USUARIO: " user

useradd $user

echo "CRIE A SENHA DO USUARIO"

passwd $user

echo "DIRETORIO $user CRIADO COM SUCESSO!!"

mkdir -p /dados/sftp/$user/arquivos

chown -R root:sftpusers /dados/sftp/$user/

chown -R $user:sftpusers /dados/sftp/$user/arquivos/

usermod -G sftpusers $user

echo "USUARIO CRIADO COM SUCESSO!"
	
