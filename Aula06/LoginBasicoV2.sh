#!/usr/bin/env bash

# Programa: Login basico
# Descricao: Variaveis Do programa 
# Autor: Vinicius Soares
user="vinicius"
password="vini"

read -p "Login: " _login
read -t 5 -sp "Password: " _pass
if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$password" ]]; then
	echo -e "\nLogado...Verificando Ambiente de Trabalho."
	sleep 2s
	clear
else
	echo -e "\nLogin ou Password Invalido!" 
	exit 1
fi

echo \
"
======== Bem Vindo $user ========  
1) Abrir Editor Featherpad
2) Abrir Editor Gedit
3) Abrir VLC
4) Sair
====================================
"
read -p "Selecione Uma Opcao: " opcao

if [[ "$opcao" -eq "1" ]]; then
	featherpad &
elif [[ "$opcao" -eq "2" ]]; then
	gedit &
elif [[ "$opcao" -eq "3" ]]; then
	vlc &
elif [[ "$opcao" -eq "4" ]]; then
	echo "Saindo..."
	exit 0
else
	echo "Comando Invalido!"
	exit 1
fi
