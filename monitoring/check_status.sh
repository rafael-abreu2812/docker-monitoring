#!/bin/bash



if docker ps | grep "nginx" > /dev/null; then
   echo "$(date) - O Nginx está rodando!"

else
   echo "$(date) - O Nginx não está rodando, favor verificar."
fi