#!/bin/bash

# Função para exibir o status do repositório
myvcs_status() {
    local staged_files=$(cat .myvcs/index)
    local modified_files=""
    local untracked_files=""

    # Verificar arquivos modificados
    for file in $(echo "$staged_files" | awk '{print $1}'); do
        if [ -f "$file" ]; then
            local file_hash=$(echo "$staged_files" | grep "$file" | awk '{print $2}')
            local current_hash=$(sha1sum "$file" | awk '{print $1}')

            if [ "$file_hash" != "$current_hash" ]; then
                modified_files+="$file\n"
            fi
        else
            modified_files+="$file\n"
        fi
    done

    # Verificar arquivos não rastreados
    for file in $(ls); do
        if [ "$file" != ".myvcs" ] && ! echo "$staged_files" | grep -q "$file"; then
            untracked_files+="$file\n"
        fi
    done

    echo "Arquivos em staging:"
    echo -e "$staged_files"

    echo "Arquivos modificados:"
    echo -e "$modified_files"

    echo "Arquivos não rastreados:"
    echo -e "$untracked_files"
}

myvcs_status

