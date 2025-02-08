#!/usr/bin/env bash

listagem=$(ls /boot)
listagem_dois=$(ls /home)
#listagem_tres=$(ls /home/tux)

echo -e "Listando '/boot'\n$listagem \n"
echo -e "Listando '/home'\n$listagem_dois \n"
#echo -e "Listando '/home/Tux'\n$listagem_tres \n"

ID=$(echo "$UID")
diretorio="/home/vinicius/"

echo "ID do usuario: $ID"
cd "$diretorio"
echo "executando comando $(pwd)"
pwd

diretorio="/home"
echo "entrando no direotrio $diretorio $(cd "$diretorio")"
