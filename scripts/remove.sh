#!/bin/sh

podman pod exists to-do > /dev/null

if [ $? -eq 0 ]; then

    bash scripts/stop.sh

    echo "Removendo o pod..."
    podman pod rm to-do

else

    echo "Pod não existe."

fi