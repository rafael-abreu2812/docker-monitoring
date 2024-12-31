#!/bin/bash
echo "--------------------------------------------------------------------------------------------------"

#Checa se existe algum erro no container do NGINX
docker logs nginx 2>&1 | grep -i error || echo "$(date) - Nenhum erro encontrado no NGINX!"


