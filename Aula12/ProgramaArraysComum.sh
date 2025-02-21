#!/usr/bin/env bash
#
# Programa: Arrays Comum
# Descricao: Arrays comum e exemplos
# Autor: Vinicius Soares

# Array Comum basica
#nome[0]="Vinicius"
#nome[1]="Soares"
#echo " ${nome[0]} ${nome[1]} "

# Chamada de Arrays
#nome=("Vinicius" "Soares")
#echo "Primeiro: ${nome[0]}"

# Chamada de Arrays em lista
nome=("Vinicius" "Soares")
echo -e "\nSeu Nome Completo: ${nome[*]}" # Pode Adicionar tanto com * ou @
