#!/bin/bash

# Função para inicializar um novo repositório
myvcs_init() {
    mkdir -p .myvcs/objects
    mkdir -p .myvcs/refs/heads
    mkdir -p .myvcs/refs/tags
    mkdir -p .myvcs/branches
    mkdir -p .myvcs/hooks
    mkdir -p .myvcs/info
    mkdir -p .myvcs/logs
    touch .myvcs/config
    touch .myvcs/description
    touch .myvcs/index
    echo "ref: refs/heads/master" > .myvcs/HEAD
    echo "Repositório inicializado."
}

# Verificar se o repositório já existe
if [ -d ".myvcs" ]; then
    echo "Repositório já existe."
    exit 1
fi

myvcs_init

