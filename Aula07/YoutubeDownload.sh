#!/usr/bin/env bash
#
# Programa: Youtube Download
# Descricao: Visualizador de videos
# Autor: Vinicius Soares

# Variaveis Do programa
qualidade="320k"
formato_audio="mp3"
#Testes Iniciais
[[ "$UID" -eq "0" ]] && { echo "Root? NO!"; exit 1 ;} 

yt-dlp --embed-thumbnail --audio-quality "$qualidade" --extract-audio "$formato_audio" "$@"
[[ "$?" -eq "1" ]] && { echo "Ondes estas o link?"; exit 1 ;}
