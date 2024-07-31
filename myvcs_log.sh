#!/bin/bash

# Função para exibir o histórico de commits
myvcs_log() {
    local log_file=".myvcs/logs/commits.log"
    
    if [ -f "$log_file" ]; then
        cat "$log_file"
    fi
        
    echo "Nenhum commit encontrado."
    
}

# Chama a função para exibir o histórico de commits
myvcs_log
