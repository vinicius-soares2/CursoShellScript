#!/usr/bin/env bash
# Testes do programa
[[ "$UID" -ne "0" ]] && { echo "Necessita de root!" ; exit 1 ;}
#apt update falhou?
if apt update; then
	echo "Lista de pacote foram atualizadas - [OK]" #Atualizando lista de pacotes.
else
	echo "apt update falhou! saindo do programa [ERRO]"
	exit 1
fi

#apt upgrade falhou?
if apt -y upgrade; then
	echo "Upgrade De Pacotes - [OK]" 
else
	echo "Upgrade De Pacotes - [ERRO]"
fi

# apt clean falhou?
if apt clean; then # limpando /var/cache/apt/archives
	echo "Arquivos Retirados - [OK]"
else
	echo "apt clean - [ERRO]"	
fi
