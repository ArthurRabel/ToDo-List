podmanversion="$(podman --version)"

if (( $(echo "${podmanversion:15:3} < 4.9" | bc -l) )); then
    echo -e "Vixe! A versão do podman está desatualizado! \nAcesse a documentação do podman para baixar uma versão superior a 4.9"
    exit 1 
fi

## Verificando se o pod ja existe
echo -e "Inicializando o projeto...\n"

podman pod exists to-do > /dev/null
if [ $? -eq 0 ]; then
    echo "Pod ja existe"    
    
    echo "Iniciando Pod..."
    podman pod start to-do > /dev/null

    bash scripts/sucessoEcho.sh
else
    echo "Projeto está sendo executado pela primeira vez."
    echo -e "Preparando o necessario para rodar... \n"

    ## Create images
    echo "Criando as image..."
    cd PostgreProject && podman build -t psqlimage . && cd ../
    cd DjangoProject/mysite && podman build -t djangoimage . && cd ../..

    podman kube play pod.yaml > /dev/null

    bash scripts/sucessoEcho.sh
fi