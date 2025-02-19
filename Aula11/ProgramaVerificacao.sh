#!/usr/bin/env bash
#
# Programa: Programa Verificacao
# Descricao: Verificacao  com loop e for
# Autor: Vinicius Soares

# Cores
vermelho="\033[31;1m"
verde="\033[32;1m"
fechamento="\033[m"
(($#==0)) && { echo "Necessita pelo menor passar um nome de programa!"; exit 1 ;}
while [[ -n "$1" ]]; do
	if type -P "$1" >/dev/null; then
		echo -e "${verde}O PROGRAMA $1 EXISTE${fechamento}"
	else
		echo -e "${vermelho}O PROGRAMA $1 NAO EXISTE${fechamento}"
	fi
	shift
done
