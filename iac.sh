#!/bin/bash

echo "Criando os grupos principais..."

bash criar_grupos.sh

echo "Criando os diretórios principais e atribuindo permissões..."

bash criar_dirs.sh

echo "Criando usuários..."

bash criar_usuarios.sh

echo "Fim!"
