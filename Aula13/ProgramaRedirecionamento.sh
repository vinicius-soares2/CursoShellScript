#!/usr/bin/env bash
#
# Programa: Redirecionamento
# Descricao: N/A
# Autor: Vinicius Soares

# > (Cria o arquivo...) Ou envia para saida STDOUT para onde definimos.
# >> (Cria um arquivo) e envia para saida anexando

arquivo_log="/tmp/log.txt"

# Teste

[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

# Use o argumento no terminal 
# echo "Teste!" >> /tmp/log.txt

# > REDIRECIONA a saida padrao (stdout) para onde voce quiser.
# >> REDIRECIONA a saida padrao (stdout) anexando.
