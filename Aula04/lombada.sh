#!/usr/bin/env bash
# Criando um programa
# Estilo Lombada eletronica

# Limite e 80
# Limite de 5km, que da 85
# Entre 80 a 85, exibe a mensagem
# Passou de 85 km, vai Flash, MULTA!

read -p "Digite Sua velocidade: " velocidade

[[ "$velocidade" -eq "80" ]]    \
&& [[ "$velocidade" -le "85" ]] \
&& echo "Voce esta no limite, CUIDADO!"

[[ "$velocidade" -ge "86" ]]    \
&& echo "FLASH!"
