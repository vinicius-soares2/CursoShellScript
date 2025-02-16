#!/usr/bin/env bash
#
# Programa: Variavel Nula
# Descricao: Verificar se a variavel e nula
# Autor: Vinicius Soares

while true; do
	read -p "Qual Seu Nome: " nome
	[[ -z "$nome" ]] && echo "Entre Com Valor!" || break
done

echo "Terminando Por aqui..."
