#!/usr/bin/env bash
#
# Programa: Programa Loop Select
# Descricao: Usando Loop Select em menu
# Autor: Vinicius Soares

# Variaveis Especiais do loop select
PS3="Selecione: "

# Forma Simples
#select nome in "Vinicius" "Soares"; do
#	echo "Nome: $nome"
#done


# Forma Correta com case
#select nome in "Vinicius" "Soares" "sair"; do
#	case "$nome" in
#		Vinicius) echo "Voce Selecinou $nome"  ;;
#		Soares) echo "Voce Selecinou $nome"    ;;
#		sair) exit 0						   ;;
#		*) echo "Este nome nao esta na lista." ;;
#	esac
#done

# Forma Usado Variaveis Especiais com $REPLY
select nome in "Vinicius" "Soares" "sair"; do
	case "$REPLY" in
		1) echo "Voce Selecinou $nome"  ;;
		2) echo "Voce Selecinou $nome"    ;;
		3) exit 0						   ;;
		*) echo "Este nome nao esta na lista." ;;
	esac
done
