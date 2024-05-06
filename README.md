## Iniciar projeto pela primeira vez

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

### Container Django

- Vá para a pasta correta

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
podman exec -it djangocontainer bash
```

- Atualizar banco de dados

```bash
python manage.py migrate
```
