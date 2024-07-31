# MyVCS 📂

MyVCS é um sistema básico de controle de versões desenvolvido em Bash, inspirado no Git. Ele permite gerenciar repositórios, commits, branches e merges, fornecendo uma base sólida para estudos e desenvolvimento de ferramentas de controle de versões.

## Introdução 📖

MyVCS é projetado para proporcionar uma compreensão aprofundada das operações de controle de versão usando ferramentas Unix. Este projeto é ideal para quem deseja aprender sobre sistemas de controle de versão em um nível mais baixo, explorando como funcionalidades básicas podem ser implementadas a partir do zero.

## Funcionalidades 🚀

- **init**: Inicializa um novo repositório, criando a estrutura de diretórios necessária.
- **add**: Adiciona arquivos ao índice (staging area).
- **commit**: Cria commits com mensagens especificadas.
- **status**: Mostra o status dos arquivos em relação ao último commit.
- **branch**: Cria novos branches.
- **checkout**: Alterna entre branches.
- **merge**: Realiza merge de branches.
- **log**: Exibe o histórico de commits.

## Ferramentas Unix Utilizadas 

- **mkdir**: Utilizado para criar diretórios.
- **cp**: Utilizado para copiar arquivos e diretórios.
- **sha1sum**: Utilizado para gerar hashes SHA-1 dos arquivos.
- **diff**: Utilizado para comparar arquivos.
- **patch**: Utilizado para aplicar diferenças entre arquivos.
- **find**: Utilizado para buscar arquivos e gerar hashes.
- **cat**: Utilizado para concatenar e exibir conteúdo de arquivos.

## Estrutura de Diretórios 📂

O MyVCS utiliza uma estrutura de diretórios simples para organizar os dados do repositório:

- `.myvcs/objects`: Armazena os objetos de commit.
- `.myvcs/refs`: Armazena os branches e os arquivos correspondentes.
- `.myvcs/stage`: Área de staging para os arquivos a serem commitados.
- `.myvcs/logs`: Logs de commits e operações realizadas.

## Funcionamento do Código 

### Inicialização do Repositório

A função `myvcs_init` cria a estrutura de diretórios necessária e define o branch principal (`master`).

### Adição de Arquivos

A função `myvcs_add` copia os arquivos especificados para a área de staging (`.myvcs/stage`).

### Criação de Commits

A função `myvcs_commit` gera um hash SHA-1 para o conjunto de arquivos na área de staging, armazena os arquivos em `.myvcs/objects` e registra o commit em `.myvcs/logs/commits.log`.

### Status dos Arquivos

A função `myvcs_status` compara os arquivos do diretório de trabalho com os arquivos do último commit no branch atual, utilizando `diff`.

### Gerenciamento de Branches

As funções `myvcs_branch` e `myvcs_checkout` permitem criar novos branches e alternar entre eles, copiando os arquivos correspondentes.

### Realização de Merge

A função `myvcs_merge` utiliza `diff3` e `patch` para aplicar as diferenças entre branches e realizar o merge.

### Exibição do Histórico de Commits

A função `myvcs_log` exibe o histórico de commits, listando os hashes e as mensagens dos commits registrados no arquivo `.myvcs/logs/commits.log`.

## Implementações Futuras 🌟

- **Resolução de Conflitos**: Melhorar a funcionalidade de merge para lidar automaticamente com conflitos.
- **Rebasing**: Implementar rebase para reescrever a história dos commits.
- **Stashing**: Permitir que alterações temporárias sejam salvas e restauradas posteriormente.
- **Cherry-picking**: Permitir a aplicação de commits específicos de um branch para outro.
- **Tags**: Adicionar suporte para criação e gerenciamento de tags.
- **Histórico de Branches**: Mostrar o histórico de commits por branch.
- **Comparação de Branches**: Implementar a funcionalidade para comparar as diferenças entre branches.
- **Alias para Comandos**: Suporte para alias de comandos para facilitar o uso.
- **Reverter Commits**: Implementar a capacidade de reverter commits específicos.
- **Interface de Linha de Comando (CLI) Avançada**: Melhorar a interface de linha de comando com opções mais sofisticadas.
- **Suporte para Hooks**: Adicionar suporte para hooks personalizados que executam scripts antes ou depois de determinadas ações.
- **Compressão de Objetos**: Implementar a compressão de objetos armazenados para economizar espaço.
- **Verificação de Integridade**: Adicionar verificações de integridade para garantir que os dados no repositório não estejam corrompidos.

---

Feito por [Thiago Ribeiro](https://github.com/rib-thiago)


