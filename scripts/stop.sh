#!/bin/sh

podmanversion="$(podman pod inspect to-do | grep "State" | head -n 1 | awk '{print $2}')"

if [ "${podmanversion:1:-2}" = "Running" ]; then
    echo "Parando pod..."
    podman pod stop to-do
    echo "Pod parado com sucesso!"
else
    echo "O pod não está em execução!"
fi