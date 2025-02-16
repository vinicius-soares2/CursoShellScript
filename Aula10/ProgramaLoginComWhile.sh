#/bin/usr/env bash
#
# Programa: Login Com While
# Descricao: Login Basico com comandos while
# Autor: Vinicius Soares
Usuario="admin"
Senha="admin"
Total="1"

while [[ "$Total" -ne "5" ]]; do
	read -p "Login: " LoginUsuario
	read -p "Senha: " SenhaUsuario
	if [[ "$LoginUsuario" = "$Usuario" ]]; then
		break
	else
		let Total++
		echo "Tentativa $Total/5"
	fi
done

echo "Continuando Programa.."
