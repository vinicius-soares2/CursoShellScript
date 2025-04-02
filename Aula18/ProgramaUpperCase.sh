#!/usr/bin/env bash
#
# Nome: Programa UpperCase
# Descricao: Todo texto sera maisculas
# Autor: Vinicius Soares
#
# Maneira 1: Sem usar expansao condicinal
#read -p $'Digite Um Texto: \n' texto
#texto=$(echo "$texto" | tr [a-z] [A-Z])
#echo "$texto"
#
# Maneira 2: Usando Expansao condiocional
read -p "Digite Seu Texto: " texto
texto="${texto^^}"
echo "$texto"
