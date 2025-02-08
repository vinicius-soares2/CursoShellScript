#!/usr/bin/env bash
#Varias Operacoes com operadores:
# = Igual
# != Diferente
# -n Nao Nulo
# -z Nulo

nome_conferir="vinicius"

#iniciando programa
read -p "Qual seu nome? " nome
test -z "$nome"                                 \
&& { echo "Variavel esta Nula! TCHAU" ; exit ;} \
|| echo "Variavel nao e nula!"

test "$nome" = "$nome_conferir" 	  \
&& echo "$nome e igual a $nome_conferir"  \
|| echo "$nome nao e igual a $nome_conferir"
