# Infraestrutura como Código: Provisionamento Automatizado de Usuários, Grupos, Diretórios e Permissões

## Descrição do Projeto

Este projeto demonstra o conceito de Infraestrutura como Código (IaC) através da criação de um script Bash que automatiza o provisionamento de usuários, grupos de usuários, diretórios e permissões em um sistema Linux. O objetivo é simplificar a configuração de novos ambientes, garantindo consistência e eliminando a necessidade de processos manuais repetitivos.

Ao executar o script, as seguintes ações serão realizadas:

* Criação dos seguintes grupos: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`.
* Criação dos seguintes diretórios: `/publico`, `/adm`, `/ven`, `/sec`.
* Criação dos seguintes usuários: `carlos`, `maria`, `joao_`, `debora`, `sebastiana`, `roberto`, `josefina`, `amanda`, `rogerio`.
* Definição do usuário `root` como o proprietário de todos os diretórios criados.
* Concessão de permissão total para todos os usuários dentro do diretório `/publico`.
* Concessão de permissão total para os usuários de cada grupo dentro de seu respectivo diretório (`/adm` para `GRP_ADM`, `/ven` para `GRP_VEN`, `/sec` para `GRP_SEC`).
* Restrição de permissões (leitura, escrita e execução) para usuários em diretórios de departamentos aos quais eles não pertencem.

O script desenvolvido para este projeto será versionado e armazenado no GitHub, permitindo sua reutilização em diferentes máquinas virtuais. Dessa forma, ao iniciar uma nova máquina, a execução do script deixará o ambiente pronto para uso de forma rápida e eficiente.

## Tecnologias Utilizadas

* **Bash Scripting:** Linguagem de script utilizada para automatizar as tarefas de provisionamento.
* **Linux:** Sistema operacional alvo para a criação da infraestrutura.
* **GitHub:** Plataforma de controle de versão e hospedagem do código-fonte.

## Pré-requisitos

* Acesso a um sistema Linux com permissões de superusuário (root ou sudo).
* Conhecimento básico de comandos Linux e Bash scripting.
* Acesso à internet para clonar o repositório do GitHub (opcional, caso o script seja transferido de outra forma).

## Como Utilizar

1.  Clonar o repositório (opcional)
2.  **Tornar o script executável:**
    ```bash
    chmod +x <nome_do_script>.sh
    ```
    (Substitua `<nome_do_script>.sh` pelo nome do arquivo do script, por exemplo, `provisionamento.sh`).

3.  **Executar o script:**
    ```bash
    sudo ./<nome_do_script>.sh
    ```
    ou
    ```bash
    ./<nome_do_script>.sh
    ```
    (dependendo das permissões e da necessidade de executar como superusuário).
