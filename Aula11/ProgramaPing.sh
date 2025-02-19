#!/usr/bin/env bash
#
# Programa: Programa Ping
# Descricao:  Usaremos o loop for com comando ping
# Autor: Vinicius Soares
#
for link in "google.com" "facebook.com" "gmail.com"; do
	ping -c 2 "$link"
done
#for link in "google.com" "facebook.com"  "gmail.com"; do
#	if [[ "$link" = "google.com" ]]; then
#		echo "O link e: $link"
#	fi
#done

