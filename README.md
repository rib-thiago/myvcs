# MyVCS 📂

MyVCS é um sistema básico de controle de versões desenvolvido em Bash, inspirado no Git. Ele permite gerenciar repositórios, commits e a área de staging, fornecendo uma base sólida para estudos e desenvolvimento de ferramentas de controle de versões.

## Introdução 📖

MyVCS é projetado para proporcionar uma compreensão aprofundada das operações de controle de versão usando ferramentas Unix. Este projeto é ideal para quem deseja aprender sobre sistemas de controle de versão em um nível mais baixo, explorando como funcionalidades básicas podem ser implementadas a partir do zero.

## Funcionalidades 🚀

- **init**: Inicializa um novo repositório, criando a estrutura de diretórios necessária.
- **add**: Adiciona arquivos ao índice (staging area).
- **commit**: Cria commits com mensagens especificadas.
- **status**: Mostra o status dos arquivos em relação ao último commit.

## Ferramentas Unix Utilizadas

- **mkdir**: Para criar diretórios.
- **cp**: Para copiar arquivos e diretórios.
- **sha1sum**: Para gerar hashes SHA-1 dos arquivos.
- **find**: Para buscar arquivos e gerar hashes.
- **cat**: Para concatenar e exibir conteúdo de arquivos.

## Estrutura de Diretórios 📂

O MyVCS utiliza uma estrutura de diretórios para organizar os dados do repositório:

- `.myvcs/objects`: Armazena os objetos de commit.
- `.myvcs/refs/heads`: Armazena os branches e os arquivos correspondentes.
- `.myvcs/refs/tags`: Armazena as tags.
- `.myvcs/branches`: Armazena os branches.
- `.myvcs/hooks`: Contém scripts de hooks.
- `.myvcs/info`: Contém informações adicionais sobre o repositório.
- `.myvcs/logs`: Armazena logs de commits e operações realizadas.
- `.myvcs/config`: Contém a configuração do repositório.
- `.myvcs/description`: Contém uma descrição do repositório.
- `.myvcs/index`: Área de staging para os arquivos a serem commitados.
- `.myvcs/HEAD`: Armazena a referência para o branch atual.

## Funcionamento do Código

### Inicialização do Repositório

A função `myvcs_init` cria a estrutura de diretórios necessária e define o branch principal (`master`), além de criar arquivos de configuração e referência como `.myvcs/config`, `.myvcs/description`, `.myvcs/index`, e `.myvcs/HEAD`.

### Adição de Arquivos

A função `myvcs_add` copia os arquivos especificados para a área de staging (`.myvcs/index`).

### Criação de Commits

A função `myvcs_commit` gera um hash SHA-1 para o conjunto de arquivos na área de staging, armazena os arquivos em `.myvcs/objects` e registra o commit em `.myvcs/logs/commits.log`.

### Status dos Arquivos

A função `myvcs_status` compara os arquivos do diretório de trabalho com os arquivos do último commit no branch atual, utilizando `find` para identificar os arquivos que foram modificados ou removidos.

### Exibição do Histórico de Commits

A função `myvcs_log` exibe o histórico de commits, listando os hashes e as mensagens dos commits registrados no arquivo `.myvcs/logs/commits.log`.

## Implementações Futuras 🌟


- [ ] 1. **Implementar o Sistema de Branches**
   - **Criar um Novo Branch**: Implementar um comando para criar um novo branch.
   - **Mudar de Branch**: Implementar um comando para mudar para um branch existente.
   - **Listar Branches**: Implementar um comando para listar todos os branches.

- [ ] 2. **Implementar o Sistema de Merge**
   - **Merge Básico**: Implementar a capacidade de mesclar branches.
   - **Resolver Conflitos**: Implementar a lógica para detectar e resolver conflitos durante o merge.

- [ ] 3. **Implementar o Sistema de Tags**
   - **Criar Tags**: Implementar um comando para criar tags.
   - **Listar Tags**: Implementar um comando para listar todas as tags.

- [ ] 4. **Melhorar a Área de Staging**
   - **Remover Arquivos do Staging**: Implementar a capacidade de remover arquivos da área de staging.
   - **Visualizar o Status do Staging**: Implementar um comando para visualizar o status atual da área de staging.

- [ ] 5. **Implementar o Sistema de Remoto**
   - **Clonar Repositórios**: Implementar a capacidade de clonar repositórios.
   - **Puxar Alterações**: Implementar a capacidade de puxar alterações de um repositório remoto.
   - **Enviar Alterações**: Implementar a capacidade de enviar alterações para um repositório remoto.

- [ ] 6. **Adicionar Suporte a Arquivos Binários**
   - **Armazenar Arquivos Binários**: Modificar o sistema para suportar arquivos binários.
   - **Detectar Arquivos Binários**: Implementar a lógica para detectar e tratar arquivos binários de maneira adequada.

- [ ] 7. **Melhorar a Eficiência e Desempenho**
   - **Compressão de Objetos**: Implementar a compressão de objetos para economizar espaço.
   - **Indexação Eficiente**: Melhorar a eficiência da indexação e busca de objetos.

- [ ] 8. **Adicionar Funcionalidades de Histórico**
   - **Mostrar Diferenças**: Implementar um comando para mostrar diferenças entre commits.
   - **Histórico Detalhado**: Implementar um comando para exibir um histórico detalhado de commits, incluindo mensagens, autores e datas.

---

Feito por [Thiago Ribeiro](https://github.com/rib-thiago)

