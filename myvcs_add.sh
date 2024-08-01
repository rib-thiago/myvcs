#!/bin/bash

#
# TODO

#
# criar sistema de loop para poder adicionar
# mais de um arquivo numa unica chamada ao
# comando add

# 
# pesquisar sobre o que `file_hash` está
# recebendo e para que serve neste contexto

# Função para adicionar arquivos ao staging
myvcs_add() {
    local file_path="$1"
    local file_hash=$(./myvcs_add_object.sh "$file_path")

    if [ -n "$file_hash" ]; then
        echo "$file_path $file_hash" >> .myvcs/index
        echo "Arquivo '$file_path' adicionado à área de staging."
    else
        echo "Falha ao adicionar '$file_path' à área de staging."
    fi
}

# Verificar se o arquivo foi fornecido como argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <caminho_do_arquivo>"
    exit 1
fi

myvcs_add "$1"
