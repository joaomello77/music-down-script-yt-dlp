#!/bin/bash

# Caminho da pasta atual
pasta="."

# Arquivos que devem ser preservados
preservar=("yt-dlp" "MusicDown.sh" "limpar.sh")

# Loop pelos arquivos da pasta
for arquivo in "$pasta"/*; do
    nome=$(basename "$arquivo")

    # Verifica se o arquivo está na lista de preservação
    preservar_flag=false
    for item in "${preservar[@]}"; do
        if [[ "$nome" == "$item" ]]; then
            preservar_flag=true
            break
        fi
    done

    if [[ "$preservar_flag" == false ]]; then
        rm -rf -- "$arquivo"
        echo "Removido: $nome"
    else
        echo "Preservado: $nome"
    fi
done
