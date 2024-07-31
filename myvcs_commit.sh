#!/bin/bash

# Função para criar um commit
myvcs_commit() {
    local message="$1"
    local commit_hash=$(echo -n "$message $(date)" | sha1sum | awk '{print $1}')
    local parent_commit=$(cat .myvcs/HEAD | awk '{print $2}')

    # Criar o objeto de commit
    echo "parent $parent_commit" > .myvcs/objects/$commit_hash
    echo "message $message" >> .myvcs/objects/$commit_hash

    # Atualizar o HEAD e a referência da branch atual
    ./myvcs_update_ref.sh "heads" "master" "$commit_hash"

    # Registrar o commit no log
    echo "$commit_hash - $message" >> .myvcs/logs/commits.log
    echo "Commit criado com a mensagem: '$message'"
}

# Verificar se a mensagem de commit foi fornecida
if [ -z "$1" ]; then
    echo "Uso: $0 <mensagem_de_commit>"
    exit 1
fi

myvcs_commit "$1"


