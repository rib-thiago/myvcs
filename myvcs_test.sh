#!/bin/bash

# Limpar o repositório anterior, se existir
rm -rf .myvcs
echo "Repositório anterior removido."

# Inicializar o repositório
./myvcs_init.sh

# Criar arquivos de teste
echo "Hello, World!" > file1.txt
echo "This is a test." > file2.txt
echo "Another test file." > file3.txt

# Adicionar arquivos ao staging
./myvcs_add.sh file1.txt
./myvcs_add.sh file2.txt

# Criar um commit
./myvcs_commit.sh "Initial commit"

# Adicionar mais um arquivo e criar outro commit
./myvcs_add.sh file3.txt
./myvcs_commit.sh "Added file3.txt"

# Verificar o log de commits
./myvcs_log.sh

# Limpar arquivos de teste
rm file1.txt file2.txt file3.txt

echo "Testes concluídos."

# Verificar a estrutura do repositório
ls -R .myvcs
