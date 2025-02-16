#!/usr/bin/env bash
#
# Programa: Programa Em Execucao
# Descricao: Ira executar programas com condicao Until
# Autor: Vinicius Soares

programa="vlc"

until ps -e | grep "$programa"; do
	echo "$programa nao esta em execucao..."
	sleep 1s
done
