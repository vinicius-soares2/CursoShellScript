#!/usr/bin/env bash
#
# Programa: Animal Case
# Descricao: Uso de case
# Autor: Vinicius Soares

read -p "Animal: " animal

case "$animal" in
	CACHORRO|cachorro) echo "Cachorro!" ;;
	GATO|gato) echo "Gato!" ;;
	"lobo guara"|"LOBO GUARA") echo "Lobo-Guara" ;;
	*) echo "Este animal nao esta na lista!" ;;
esac

# Dica: Na linha (12) podemos utilizar nomes compostos utilizando aspas ""
