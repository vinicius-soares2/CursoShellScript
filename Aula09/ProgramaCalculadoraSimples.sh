#!/usr/bin/env bash
#
# Programa: Calculadora Simples
# Descricao: Calculadora Basica
# Autor: Vinicius Soares

# Verificando se o usuario e root
(( "$UID" == 0 )) && { echo "Usuario root, NAO"; exit 1;}

function principal(){
	clear
	echo "==================="
	echo "1) '+' Soma"
	echo "2) '-' Subtracao"
	echo "3) '/' Dividir"
	echo "4) '*' Multiplicar"
	echo "5) Sair do Programa"
	echo "===================="
	read -p "escolha a opcao: " opcao
	
	case "$opcao" in
		"1") soma        ;;
		"2") subtracao   ;;
		"3") divisao     ;;
		"4") multiplicar ;;
		"5") exit 0		 ;;
		  *)
		  	echo "Escolha uma opcao da lista!"
		  	sleep 2s; principal
		  				;;
	esac
}
function soma(){
	read -p "Valor 1: " val_um
	read -p "Valor 2: " val_dois
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor Entrar com um numero."; sleep 0.9
		soma
	fi
	total="$(( $val_um + $val_dois))" # Fazendo o Calculo e armazenando
	echo "O resultado e: $total"; sleep 1.2s
	principal						  # Chamando a funcao principal
}
function subtracao(){
	read -p "Valor 1: " val_um
	read -p "Valor 2: " val_dois
	# Se val_um ou val_dois for nulo, retorna para funcao.
	if [[ -z  "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor Entrar com numero"; sleep 0.9s
		subtracao
	fi
	total="$(($val_um - $val_dois))" # Fazendo calculo e armazenando
	echo "O Resultado e: $total"; sleep 1.2s
	principal						 #Chamando a funcao principal
}
function divisao(){
	read -p "Valor 1: " val_um
	read -p "Valor 2: " val_dois
	# Se val_um ou val_dois for nulo, retorna para funcao.
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor entrar com um numero"; sleep 0.9s
		divisao
	fi
	total="$(($val_um / $val_dois))" # Fazendo calculo e armazenando
	echo "O Resultado e: $total"; sleep 1.2s
	principal                        #Chamando a funcao principal
}
function multiplicar(){
	read -p "Valor 1: " val_um
	read -p "valor 2: " val_dois
	# Se val_um ou val_dois for nulo, retorna para funcao.
	if [[ -z "$val_um" ]] || [[ -z "$val_dois" ]]; then
		echo "Favor Entrar Com Um Numero"; sleep 0.9s
		multiplicar
	fi
	total="$((val_um * val_dois))" # Fazendo calculo e armazenando
	echo "O Resultado e: $total"; sleep 1.2s
	principal                      # Chamando a funcao principal
}
# Iniciando Programa!
principal # Chamando a funcao
