#!/usr/bin/env bash


echo "Verificando conexao com a internet..."
# Bloco if/then/else
if wget -q --spider google.com; then
	echo "---> Google its On!"
else
	echo "---> Google Its Off!"
fi
	
