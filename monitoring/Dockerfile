
FROM ubuntu:latest

# Instala o Docker no container de monitoramento
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl software-properties-common && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    rm get-docker.sh

# Instala pacotes do bash   
RUN apt-get install -y bash

# Define pasta raiz
WORKDIR /scripts

# Copia os scripts para dentro do container
COPY . /scripts

# Comando para manter o container em execuçao
CMD ["bash", "-c", "while true; do ./check_logs.sh; ./check_resources.sh; ./check_status.sh; sleep 60; done"]
