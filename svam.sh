#!/bin/bash


if command -v docker &> /dev/null
    then
        echo "Docker ya está instalado en el sistema."
        exit 0
    fi

sudo apt install docker.io

sudo apt install git-all
