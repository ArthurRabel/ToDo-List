## Iniciar projeto pela primeira vez

### Criando a rede

A aplicação constitui de dois containers, aplicação django e banco de dados postgreSql, para ambos containers poderem comunicar entre si, é necessario criar uma rede.

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

## Iniciar projeto

### Container DB PostgreSql 

- Rodar o container

```bash
podman start psqlcontainer 
```

- Interagir via terminal com container

```bash
podman exec -it psqlcontainer bash
```

### Container Django

- Rodar o container

```bash
podman start djangocontainer 
```

- Interagir via terminal com container

```bash
podman exec -it djangocontainer bash
```
