#!/usr/bin/env bash
#
# Programa: Arrays sociativas
# Descricao: Arrays Sociativas e exemplos
# Autor: Vinicius Soares

# Trabalhando Com array associativo

declare -A dados
dados[nome]="Vinicius"
dados[sobrenome]="Soares"
dados[idade]="00 Anos"
dados[numero]="00"

echo -e "O nome e: ${dados[nome]}\nO Sobrenome e: ${dados[sobrenome]}\nO Numero e: ${dados[numero]}"


