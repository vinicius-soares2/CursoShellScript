#!/usr/bin/env bash
#
# Programa: For Arrays
# Descricao: For com Arrays Metodos.
# Autor: Vinicius Soares

apelidos=( Vini Papa Fafa Fifi)

for i in "${!apelidos[@]}"; do
	echo "Vetor $i: ${apelidos[$i]}"
done

echo "Indice Totais de Array 'Apelidos': ${!apelidos[@]}"
echo "Quantidade de indices na Array 'Apelidos': ${#apelidos[@]}"
	
