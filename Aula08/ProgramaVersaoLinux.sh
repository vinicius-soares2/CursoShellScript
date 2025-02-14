#!/usr/bin/env bash
#
# Programa: Versao Linux
# Descricao: Imprimindo a versao do sistema.
# Autor: Vinicius Soares
TesteDeTexto="Lindo e puro Global."
versao="1.0"
function versao_linux(){
	local versao=$(cat -n /etc/os-release)
	echo -e "Seu Sistema:\n$versao"
	local TesteDeTexto="Lindo e puro na funcao"
}
versao_linux # Chamando a funcao.
echo "Frase De Efeito: $TesteDeTexto"
echo "Minha Versao: $versao"
