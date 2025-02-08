#!/usr/bin/env bash

# --> Raciocinio
# Preciso criar um menu com os seguintes comando
# Chrome
# Gedit
# Terminal

echo "#==================#"
echo "1) Abrir o Chrome"
echo "2) Abrir o Gedit"
echo "3) Abrir o Terminal"
echo "4) Sair"
echo "#==================#"
read -p "Selecione uma das opcoes: " opcao

if [[ "$opcao" -eq "1" ]]; then
	google-chrome &
	

elif [[ "$opcao" -eq "2" ]]; then
	gedit
	
elif [[ "$opcao" -eq "3" ]]; then
	xterm

elif [[ "$opcao" -eq "4" ]]; then
	echo "Saindo do programa..."
	exit 0;
else
	echo "Opcao Invalida!"
fi
