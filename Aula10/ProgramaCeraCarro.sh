#!/usr/bin/env bash
#
# Programa: Cera no Carro
# Descricao: Com while criaremos uma ideia de esfregar um carro com cera ate a sjueira sair.
# Autor: Vinicius Soares

# Dicas
# break -  Para com loop prematuro.
# continue - Continue com loop do inicio. (Ou seja retorna do inicio loop).
# O comando : (dois pontos) no shell Linux pode ser usado para indicar que nada deve ser feito pelo comando, mas que ele deve produzir um status de saída de zero (sucesso). 

# Cera No Carro
# Verificando Se a Sujeira Saiu.

while :; do
	read -p "Sujeira saiu? [s/n] " sujeira
	# [[ "$sujeira" = "s" ]] && continue
	[[ "$sujeira" = "s" ]] && break
	echo "Esfrega..."
	echo "Esfrega Mais Um Pouco"
	echo "Continue Esfrengando"
done

echo "Sujeira Saiu Com Sucesso!"
