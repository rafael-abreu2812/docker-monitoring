#!/bin/bash

# Obtém o uso de CPU e memória do contêiner Nginx
cpu_usage=$(docker stats --no-stream --format "{{.CPUPerc}}" nginx)
mem_usage=$(docker stats --no-stream --format "{{.MemUsage}}" nginx)

# Exibe o uso de CPU e memória do contêiner Nginx
echo "$(date) - Uso de CPU do Nginx: $cpu_usage"
echo "$(date) - Uso de memória do Nginx: $mem_usage"
