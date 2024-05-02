## Iniciar projeto pela primeira vez

### Criando a rede

A aplicação consiste em dois containers: um contendo a aplicação Django e outro contendo o banco de dados PostgreSQL. Para permitir a comunicação entre esses containers, é necessário criar uma rede.

```bash
podman network create minharede
```

### Container DB PostgreSql

Para o software funcionar antes de rodar o container do django é necessario o container do postgreSql já está rodando. 

- Vá para a pasta correta

```bash
cd PostgreProject
```

- Cria a imagem do DB PostgreSql

```bash
podman build -t psqlimage .
```

- Criar e rodar o container DB PostgreSql

```bash
podman run --network=minharede -it -p 5432:5432 --name psqlcontainer psqlimage
```

### Container Django

- Vá para a pasta correta

```bash
cd DjangoProject/mysite
```

- Cria a imagem do Django

```bash
podman build -t djangoimage .
```

- Cria e roda o container Django

```bash
podman run --network=minharede -it -p 8000:8000 --name djangocontainer djangoimage
```

## Rodar o projeto

- Rodar o container PostgreSql

```bash
podman start psqlcontainer 
```

- Rodar o container Django

```bash
podman start djangocontainer 
```

## Interagir com os containers via terminal

- Interagir via terminal com container PostgreSql

```bash
podman exec -it psqlcontainer bash
```

- Interagir via terminal com container Django

```bash
podman exec -it djangocontainer bash
```
