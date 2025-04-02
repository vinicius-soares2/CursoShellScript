#!/usr/bin/env bash
#
# Nome: Programa Lower Case
# Descricao: Todo programa ficara em minusculo
# Autor: Vinicius Soares
#
# Maneira 1: Sem Expansao Condicional:
#
# Maneira 2: Com Expansao Condicional
read -p "Seu Texto: " texto
texto="${texto,,}"
echo "$texto"
