## Preparando podman

Criar image 

``` bash
 podman build -t psqltest .
```

Rodar/criar container 

``` bash
 podman run -it -p 5435:5432 --name containerpsqlteste localhost/psqltest
``` 

## Manipular banco de dados

Interagir com container com bash

``` bash
 podman exec -it containerpsqlteste bash
```

Entrar no usuario postgres rabelo

``` bash
 psql -U rabelo -d db_teste
``` 
