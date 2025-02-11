 #!/usr/bin/env bash
 
 # Programa: Uso de case
 # Descricao: Uso de case em estruturas condicionais.
 # Autor: Vinicius Soares
 
 read -p "Qual seu nome: " nome
 
 case "$nome" in
 	vinicius | vinicius2 | vinicius3) echo "VINICIUS" ;;
 	#arch | arch2 | arch3) echo "Arch" ;;
 	#d3dx939 | d3dx939dll | d3d) echo "d3dx939dll " ;;
# 	*) echo "Nome Nao Encontrado!" ;;
 esac
