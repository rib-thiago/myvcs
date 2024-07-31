#!/bin/bash

# Função para adicionar um objeto (commit, blob, tree) ao repositório
myvcs_add_object() {
    local file_path="$1"
    local hash=$(sha1sum "$file_path" | cut -d ' ' -f 1)
    local dir=".myvcs/objects/${hash:0:2}"
    local file="${hash:2}"

    mkdir -p "$dir"
    cp "$file_path" "$dir/$file"
    echo "Objeto adicionado com hash $hash."
}

# Verificar se o arquivo foi fornecido como argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <caminho_do_arquivo>"
    exit 1
fi

myvcs_add_object "$1"
