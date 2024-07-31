#!/bin/bash

# Função para registrar um commit no log
myvcs_log_commit() {
    local commit_hash="$1"
    local message="$2"
    local log_file=".myvcs/logs/commits.log"

    echo "$commit_hash - $message" >> "$log_file"
    echo "Commit $commit_hash registrado no log."
}

# Verificar se todos os argumentos foram fornecidos
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Uso: $0 <hash_do_commit> <mensagem_do_commit>"
    exit 1
fi

myvcs_log_commit "$1" "$2"

