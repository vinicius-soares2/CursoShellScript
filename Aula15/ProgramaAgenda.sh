#!/usr/bin/env bash
#
# Programa: Agenda 
# Descricao: Agenda caseira 
# Autor: Vinicius Soares

# Variaveis Globais
banco_de_dados="banco-de-dados.txt"

# Cores
vermelho="\E[31;1m"
fecha_cor="\E[m"

# Teste
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"
(($UID==0)) && { echo "Root nao!"; exit 1 ;}

# Funcoes
function adicionar(){
lista=("Nome" "CPF" "DDD" "Telefone")
i=1
	for dados in "${lista[@]}"; do
		while [[ -z "${dados[i]}" ]]; do
			read -p "${dados}: " dados[$i]
		done
		((i++))
	done
if ! grep -qo "${dados[2]}" "$banco_de_dados"; then
	# Enviando para o banco de dados...
	dados[2]=$(sed 's/\.//g' <<< "$dados[2]") # Aqui
	echo "----- ${dados[2]}"
	ID=$(($(wc -l < "$banco_de_dados")+1))
	echo "${ID}:${dados[1]}:${dados[2]}:${dados[3]}" | tr 'A-Z' 'a-z' >> "$banco_de_dados"
else
	echo "ID Existe!"
	exit 1
fi
}






# Menu de entrada
case $1 in
	-a|--adicionar) adicionar ;; # Chamada funcao adicionar.
esac