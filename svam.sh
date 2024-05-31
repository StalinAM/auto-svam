#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install docker.io -y

# install brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y

sudo apt install brave-browser -y

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

nvm install --lts