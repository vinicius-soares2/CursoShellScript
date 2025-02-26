#/usr/bin/env bash
#
# Programa: Interface basica
# Descricao: criando uma interface basica simulando DOS
# Autor: Vinicius Soares

# vermelhoAbri="\033[31;1m"
# vermelhoFecha="\033[m"

clear
echo -e "\tDOS - Emulador do Windows"
while true; do
	read -ep $'\033[31;31m>\033[m ' entrada
	if [[ "$entrada" = "cls" ]]; then
		clear
	elif [[ "$entrada" = "edit" ]]; then
		nano
	fi
done
