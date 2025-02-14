#!/usr/bin/env bash
#
# Programa: Funcoes Status
# Descricao: Retorno de saida com funcoes
# Autor: Vinicius Soares  	

function status_saida(){
	local diretorio="/home/Soares"
	ls "$diretorio"
	return 256
}
status_saida
echo ">>> $?"

#Dica: No shell status de saida vai de 0 a 255
