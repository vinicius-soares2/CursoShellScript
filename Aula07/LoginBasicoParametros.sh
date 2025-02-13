#!/usr/bin/env bash

# Programa: Login basico
# Descricao: Variaveis Do programa 
# Autor: Vinicius Soares

# Entrada De dados
user="vinicius"
password="vini"
cpf="00"

case "$1" in
	-l|--login)


		# Logica do programa / menu 
		read -p "Login: " _login
		read -t 5 -sp "Password: " _pass
		read -sp $'\nCPF: ' _cpf
		if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$password" ]] && [[ "$_cpf" = "$cpf" ]]; then
			echo -e "\nLogado...Verificando Ambiente de Trabalho."
			sleep 2s
			clear
		else
			echo -e "\nLogin ou Password Invalido!" 
			exit 1
		fi

		# Menu de opcao do programa

		echo \
		"
		======== Bem Vindo $user ========  
		1) Abrir Editor Featherpad
		2) Abrir Editor Gedit
		3) Abrir VLC
		4) Sair
		====================================
		"
		read -p "Selecione Uma Opcao: " opcao

		case "$opcao" in
			1)	
					[[ $(type -P featherpad) ]] || { echo "featherpad nao existe..."; exit 1 ;}
			  	featherpad & 
			  ;;
			
			2)
					[[ $(type -P gedit) ]] || { echo "gedit nao existe..."; exit 1 ;} 
					gedit & 
				;;
				
			3) 	[[ $(type -P gedit) ]] || { echo "vlc nao existe..."; exit 1 ;}
					vlc & 
				;;
			4) exit 0 ;;
			*) echo "Invalido!"
		esac
		;; # Fecha bloco login.
		
		-h|--help)
			echo \
			"Opcoes:
			-l, --login (Programa Com Menu)
			-h, --help (Opcao Ajuda)"
		;;
		-b|--backup)
			echo "Arquivo de origem:  $2"
			echo "Arquivo De Destimo: $3"
		;;
		*)
			echo "Use a opcao -h, --help para uma ajuda em geral."
		;;
esac # Case principal
