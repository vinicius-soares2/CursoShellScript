#!/usr/bin/env bash
#
# Nome: Programa Agenda
# Descricao: Programa Agenda com novas funcoes
# Autor: Vinicius Soares

# Variavel Global
banco_de_dados="banco-de-dados.txt"
# Cores
vermelho="\E[31;1m"
fecha_cor="\E[m"
# Teste Inicial
[[ ! -e "$banco_de_dados" ]] &&  > "banco_de_dados"
# Teste Root
(($UID==0)) && { echo "Root nao!"; exit 1 ;}
# Funcao Para adicionar contato
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
	dados[2]=$(sed 's/\./-/g' <<< "${dados[2]}" 2>&1)
	ID=$(($(wc -l < "$banco_de_dados")+1))
	if echo "${ID}:${dados[1]}:${dados[2]}:${dados[3]}:${dados[4]}" | tr 'A-Z' 'a-z' >> "$banco_de_dados"; then
		echo "Dados Enviado com sucesso para: ${banco_de_dados}"
	else
		echo "Houve Algum Erro!"
	fi
else
	echo "ID Nao Existe!"
	exit 1
fi
}
# Funcao para buscar contato
function buscar(){
	read -p "ID USUARIO: " id
	[[ -z "$id" ]] && exit 1
	if grep -q "^$id" "$banco_de_dados"; then
		ID=$(grep "^$id" "$banco_de_dados"       | cut -d ':' -f '1')
		nome=$(grep "^$id" "$banco_de_dados"     | cut -d ':' -f '2')
		cpf=$(grep "^$id" "$banco_de_dados"      | cut -d ':' -f '3')
		ddd=$(grep "^$id" "$banco_de_dados"      | cut -d ':' -f '4')
		telefone=$(grep "^$id" "$banco_de_dados" | cut -d ':' -f '5')
	else
		{ echo "O id ${id}, nao existe..."; exit 1 ;}
	fi

cat <<END 
==========
ID Usuario: $ID
Nome: $nome
CPF: $cpf
Telefone Com ddd: ($ddd) $telefone
==========
END
}
# Menu de Entrada
case "$1" in
	-a|--adicionar) shift; adicionar ;; # Chamada funcao adicionar.
	-b|--busca)    shift ; buscar 	 ;; # Chamada Funcao buscar.
esac