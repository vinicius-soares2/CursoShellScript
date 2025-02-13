#!/usr/bin/env bash
# Nome Do Programa: Parametros Posicionais
# Descricao:
# Autor: Vinicius Soares

# Padrao de uso do primeiro grupo
echo "O Nome Do Programa: $0"
echo "O Primeiro: $1"
echo "O Segundo: $2"
echo "O Terceiro: $3"
echo "O Quarto: $4"
echo "O Quinto: $5"
echo "O Quartoze 10: ${10}"

# Segundo padrao do segundo grupo

IFS=: 
echo "Numero Total Passado: $#"
echo "Todos Os parametros: $*"
echo "Todos parametros protegidos: $@"

# Exemplos de uso do segundo grupo de parametros
# $* "a b c d e f g"
# $@ "a" "b" "c" "d" "e" "f" "g"


# Mais Opcoes
echo "Numero Atual Do PID: $$"
echo "Numero do PID em JOB em segundo plano: $!"
echo "Ultimo Argumento Do Ultimo comando executado: $_"
echo "Mostra o codigo de retorno do ultimo comando: $?"

