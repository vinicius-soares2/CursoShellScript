#!/usr/bin/env bash

# Variaveis do programa
servidor1="icanhazip.com"
servidor2="ipinfo.io"
# =

# Teste Iniciais
echo "Verificando Internet ..."
if ! wget -q --spider www.google.com; then
	echo "Necessita de Internet"
	exit 1
fi
# =
exec_=$(if curl -s "$servidor1"; then curl -s "$servidor2"; fi)

echo "Seu IP externo e: $exec_"
