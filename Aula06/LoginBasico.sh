#!/usr/bin/env bash

# Programa: Login basico
# Descricao: Variaveis Do programa 
# Autor: Vinicius Soares
user="vini"
password="vini"

read -p "Login: " _login
read -p "Password: " _pass
if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$password" ]]; then
	echo "Logado...Verificando Ambiente de Trabalho."
	sleep 1s
else
	echo "Login ou Password Invalido!" 
	exit 1
fi

echo "Abrindo Menu:"
pwd
