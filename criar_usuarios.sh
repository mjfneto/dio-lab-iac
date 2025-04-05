#!/bin/bash

admers=("carlos" "maria" "joao")
veners=("debora" "sebastiana" "roberto")
secers=("josefina" "amanda" "rogerio")

echo "Criando usuários do grupo GRP_ADM..."

for user in "${admers[@]}"; do
  useradd "$user" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
  passwd -e "$user"

  echo "Usuário $user criado. A senha expirará na primeira tentativa de login."
done

echo "Criando usuários do grupo GRP_VEN"

for user in "${veners[@]}"; do
  useradd "$user" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
  passwd -e "$user"

  echo "Usuário $user criado. A senha expirará na primeira tentativa de login."
done

echo "Criando usuários do grupo GRP_SEC"

for user in "${secers[@]}"; do
  useradd "$user" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
  passwd -e "$user"

  echo "Usuário $user criado. A senha expirará na primeira tentativa de login."
done
