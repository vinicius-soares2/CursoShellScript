#!/usr/bin/env bash
#
# Programa: Redirecionamento 2 
# Descricao: Verifica comando e lista erro em diretorio temporario
# Autor: Vinicius Soares


arquivo_log="/tmp/log.txt"

# Teste

[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

# Passando Direotorio que nao existe
# Para o comando ls, e enviando a saida
# De erro para o arquivo de log.

if ls /homee >/dev/null 2>>"$arquivo_log"; then
	echo "O Comando ls funcionou"
else
	echo "Hora: $(date +%H:%M)" >> "$arquivo_log"
	echo "Opa Houve Um erro, verifique em: $arquivo_log"
fi
