#!/usr/bin/env bash
#
# Programa: Programa For
# Descricao:  Usando Loop For
# Autor: Vinicius Soares
#
# Sintaxe Do Loop For
#for Variavel in "NOME" "NOME2" ; do
#	[[ "Bloco De Comando" ]]
#done


#set -x # Verificando linha linha
#for frutas in "Tomate" "Jaca" "Maca" "Pera" "Laranja" "Melancia"; do
#	echo "Lista De Frutas Cara: $frutas"
#done
# Primeira forma de imprimir numeros ; Simulando Comando seq 1 9
#for numeros in 1 2 3 4 5 6 7 8; do
#	echo "NUMERO: $numeros"
#done

# Segundo forma de imprimir numeros
#for numeros in {0..1000000..10000 }; do
#	echo "Numeros: $numeros"
#	[[ ! "$numeros" -ge "1000000" ]]
#done
for frutas in "$(cat lista.txt)"; do
	echo "Fruta: $frutas"
done 
