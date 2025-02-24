#/usr/bin/env bash
#
# Programa:
# Descricao:
# Autor: 
#
# = "" - _
arquivo_log="/tmp/log.txt"

cat >>"manual.txt" <<FECHA
Um Texto para este pequeno pedaco de codigo.
Para este pequeno programa que eu criei.
FECHA

[[ ! -e "$arquivo_log" ]] && > "$arquivo_log"

if ls/homee >/dev/null 2>>"$arquivo_log"; then
	echo "O comando ls funcionou"
else
	echo "hora: |---$(date +%H:%M)---|" >> "$arquivo_log"
	echo "Erro: $arquivo_log"  
fi

if ! ls /homee >& 2>&-; then
	echo "Erro!!!"
fi
