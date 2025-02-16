#!/usr/bin/env bash

# Programa: Login basico Com While
# Descricao: Login Com Lacos De repeticao while.
# Autor: Vinicius Soares

source conf/LoginSenha.conf
source Biblioteca/Biblioteca.conf 


# Funcoes
function _login(){
	# Logica do programa / menu 
	total="1"
	while true; do
		echo "Tentativas: $total/3"
		read -p "Login: " _login
		read -t 5 -sp "Password: " _pass
		read -sp $'\nCPF: ' _cpf
		if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$password" ]] && [[ "$_cpf" = "$cpf" ]]; then
			echo -e "\nLogado...Verificando Ambiente de Trabalho."
			sleep 2s
			clear
			break
		else
			echo -e "\nLogin ou Password Invalido!" 			
			let total++ 
			[[ "$total" -eq "4" ]] && exit 1
		fi
	done
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

}


case "$1" in
	 	-l|--login)
			_login #Chamando a funcao login.
		;; 
		
		-h|--help)
			_help #Chamando a funcao ajuda.
		;;
		-b|--backup)
			echo "Arquivo de origem:  $2"
			echo "Arquivo De Destimo: $3"
		;;
		*)
			echo "Use a opcao -h, --help para uma ajuda em geral."
		;;
esac # Case principal
