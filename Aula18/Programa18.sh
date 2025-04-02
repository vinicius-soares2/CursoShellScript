#!/usr/bin/env bash
#
# Nome: Programa Resumo
# Descricao: Funcoes e Explicacao de alguns conceito do programa
# Autor: Vinicius Soares
#
# Se Variavel NAO estiver definida ou nula
# Define com oque eu passar de argumento.
#echo "${nome:-vinicius}"
#echo "Ta nula ${nome}"


# Se Variavel Nao estiver definida ou nula
# Retorne o seguinte ERRO:
#read -p "Qual Seu nome: " nome
#echo "${nome:?Erro...entrada nula, entre com algum dado\!}"

# saindo automaticamente com enter
#read -p "Deseja Sair [S/n]" escolha
#escolha="${escolha:=s}"
#[[ "$escolha" = "s" ]] && echo "Saindo"

nome="vinicius"
echo "${nome:+Uma Variavel Teste}"
