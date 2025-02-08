#!/usr/bin/env bash

read -p "Esta vindo carro da direita? [sim/nao]: " rep1
if [[ "$rep1" = "sim" ]]; then
	echo "OK, entao nao vamos atravessar!"
	exit 1
fi

read -p "Esta vindo carro da esquerda [sim/nao]: " rep2
if [[ "$rep2" = "sim" ]]; then
	echo "Ok, entao nao vamos atravessar!"
	exit 1
fi
	
read -p "Posso atravessar? [sim/nao]: " rep3
if [[ "$rep3" = "sim" ]]; then
	echo "Atravessando a rua!..."
	exit 0
fi
echo "Continue..."
	
