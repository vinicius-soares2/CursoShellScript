#!/usr/bin/env bash

# Programa: 
# Descricao:
# Autor: 

diretorio1="/home/vinicius/Downloads"
diretorio2="/home/vinicius/Imagens"

if [[ -d "$diretorio1" ]] && [[ -d "$diretorio2" ]]; then
	echo "Diretorio(s) encontrado(s)."
	echo -e "\nDiretorio passado: $diretorio1"; ls $diretorio1
	echo -e "\nDiretorio Passado: $diretorio2"; ls $diretorio2
else
	echo "Os ou diretorio(s) nao existem."
fi

[[ -d "$diretorio1" ]] && echo "Diretorio Download Existe"
[[ -d "$diretorio2" ]] && echo "Diretorio Imagens Existe."
