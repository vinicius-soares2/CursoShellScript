#!/usr/bin/env bash
#
# Programa: Funcoes em Ambiente
# Descricao: Teste com parametros 
# Autor: Vinicius Soares

function parametros(){
	[[ -z "$1" ]] && echo "Variavel e nula" || echo "Variavel nao e nula"
}

# Para Degubar Programa
set -x

#Sera sempre necessario passar parametros posicionais
parametros "$@"
# OU
parametros "$*"

