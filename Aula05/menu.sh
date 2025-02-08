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
echo "#==================#"
read -p "Selecione uma das opcoes: " opcao

if [[ "$opcao" -eq "1" ]]; then
	google-chrome
fi

if [[ "$opcao" -eq "2" ]]; then
	gedit
fi

if [[ "$opcao" -eq "3" ]]; then
	xterm
fi
