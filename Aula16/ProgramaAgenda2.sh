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
[[ ! -e "$banco_de_dados" ]] && {
cat > "$banco_de_dados" <<fecha
########'ID:NOME SOBRENOME:CPF:DDD:TELEFONE'########
fecha
}
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
	echo "Teste $?"
}
# Menu de Entrada
case "$1" in
	-a|--adicionar) shift; adicionar ;; # Chamada funcao adicionar.
	-b|--busca)    shift ; buscar 	 ;; # Chamada Funcao buscar.
esac