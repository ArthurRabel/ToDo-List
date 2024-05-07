## Iniciar projeto pela primeira vez

### Criando as images


- Vá para a pasta em que está o dockerfile do banco

```bash
cd PostgreProject
```

- Cria a imagem do DB PostgreSql

```bash
podman build -t psqlimage .
```

- Vá para a pasta em que está o dockerfile do site

```bash
cd ../DjangoProject/mysite
```

- Cria a imagem do Django

```bash
podman build -t djangoimage .
```

## Rodar o projeto

- Volte para pasta Raiz

```bash
cd ../..
```

- Rodar o Pod da aplicação

```bash
podman kube play pod.yaml
```


## Interagir com os containers via terminal

- Interagir via terminal com container Django

```bash
podman exec -it [ContainerName] bash
```