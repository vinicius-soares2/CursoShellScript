#!/usr/bin/env bash

#[[ $(type -P dialog) ]] && echo "EXISTE" || echo "Nao Existe"
[[ $(type -P gedit) ]] || { echo "Necessita do dialog, para executar o programa" ; exit ;}

#[[ "$UID" -ne "0" ]] && { echo "Necessita de root, para executar programa." ; exit 1 ; }

read -p "Nome: " nome

[[ "$nome" ]] && echo "tem conteudo" || echo "nao tem"


#checando diretorio 
[[ -d "Aula04" ]] && echo "TEM DIRETORIO" || echo " nao tem diretorio"

