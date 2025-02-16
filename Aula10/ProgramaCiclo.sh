#!/usr/bin/env bash
#
# Programa: Programa Ciclos
# Descricoa: Ciclos e loops
# Autor: Vinicius Soares

# Trabalhando com loop while.
# While: Enquanto status de saida for 0 faca...

#while [[ "1" = "1" ]]; do
#	echo -e "Infinite :)\n"
#	sleep 1s
#done 

Valor="0"
while [[ "$Valor" -ne "5" ]]; do
	Valor=$(($Valor+1))
	echo "Valor e: $Valor"
	: Comentario feito com dois ponto
done

