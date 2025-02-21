#!/usr/bin/env bash
#
# Programa: For Arrays
# Descricao: For com Arrays exemplos simples.
# Autor: Vinicius Soares

# Diferenca entres @ e *
# @ Pula linha
# * Linha Unica 
carros=("PALIO" "CORSA" "OPALA" "CHEVETTE" "MERCEDES" "BMW")

for lista in "${carros[*]}"; do
	echo "Seu Carro: $lista"
done


