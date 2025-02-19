#!/usr/bin/env bash
#
# Programa: Comando shift
# Descricao: usando comando shift na pratica
# Autor: Vinicius Soares
#while sleep 1s; do
#case $1 in
#	Nome1) echo "Nome1"; shift ;;
#	Nome2) echo "Nome2"; shift ;;
#	Nome3) echo "Nome3"; shift ;; 
#esac
#done

case $1 in
	ligar)
		echo "Cafeteria Ligada."
		shift
		[[ "$1" = "aumentar" ]] && echo "Aumentando Fluxo.."
	;;
esac 
