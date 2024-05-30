#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install docker.io

sudo apt install git-all

#Install nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source ~/.zshrc
# Cargar nvm en el entorno actual
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Esto carga nvm

# Verificar si nvm está cargado
if command -v nvm &> /dev/null
then
    echo "nvm está cargado correctamente"
else
    echo "Error: nvm no se pudo cargar"
    exit 1
fi

# Listar las versiones de Node.js instaladas
nvm list
