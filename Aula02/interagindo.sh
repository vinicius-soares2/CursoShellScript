#!/usr/bin/env bash

#read -p "Qualseu nome? " nome

#read -p "Qual sua altura? " altura

#read -p "Qual sua escolaridade ? " escolaridade

#echo -e "O seu nome e: $nome\n"
#echo -e "Sua altura e: $altura\n"
#echo -e "Sua escolaridade e: $escolaridade\n"

#echo "Qual seu diretorio?"
#read -e diretorio

#cd "$diretorio"
#echo "Voce Esta em: $(pwd)"

echo "Qual diretorio voce quer listar?"
read -e listagem

ls "$listagem"
