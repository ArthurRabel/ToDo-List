## Preparando podman

Criar image 

``` bash
 podman build -t djangoimg .
```

Rodar/Criar container 

``` bash
 podman run -it -p 8000:8000 --name djangoproject localhost/djangoimg
``` 
