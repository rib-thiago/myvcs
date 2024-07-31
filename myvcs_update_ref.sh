#!/bin/bash

# Função para atualizar a referência
myvcs_update_ref() {
    local ref_type="$1"
    local ref_name="$2"
    local commit_hash="$3"
    local ref_file=".myvcs/refs/$ref_type/$ref_name"

    # Verificar se o diretório da referência existe
    if [ ! -d "$(dirname "$ref_file")" ]; then
        mkdir -p "$(dirname "$ref_file")"
    fi

    echo "$commit_hash" > "$ref_file"
    echo "Referência '$ref_type/$ref_name' atualizada para o commit $commit_hash."
}

# Verificar se todos os argumentos foram fornecidos
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Uso: $0 <tipo_de_ref> <nome_da_ref> <hash_do_commit>"
    exit 1
fi

myvcs_update_ref "$@"
