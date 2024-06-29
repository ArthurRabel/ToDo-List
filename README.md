# To-Do List

Um simples CRUD To-Do List, para entender o basico de Postgres e Django.

### Tecnologias

Este projeto foi desenvolvido utilizando as seguintes tecnologias:
- **HTML**
- **CSS**
- **JavaScript**
- **Python**
- **Django**
- **Postgres**
- **Podman**

## Índice

1. [Instalação](#Instalação)
2. [Utilização](#Utilização)
3. [Estrutura](#Estrutura)
4. [Licença](#Licença)
5. [Contato](#Contato)

## 1.Instalação

Clone o projeto:

```bash
git clone https://github.com/ArthurRabel/ToDo-List.git
cd ToDo-List
```

## 2.Utilização

Criar e rodar o pod do projeto:

```bash
bash scripts/run.sh
```
Parar o projeto:

```bash
bash scripts/remove.sh
```

Remover o projeto:

```bash
bash scripts/remove.sh
```

## 3.Estrutura

```
ToDo-List
├── DjangoProject
│   └── mysite
│       ├── Dockerfile
│       ├── manage.py
│       ├── mysite   #Projeto inicial do Django
│       │   ├── asgi.py
│       │   ├── __init__.py
│       │   ├── settings.py   #Configurações
│       │   ├── urls.py
│       │   └── wsgi.py  
│       └── polls   #To-do List
│           ├── admin.py
│           ├── apps.py
│           ├── __init__.py
│           ├── migrations
│           │   └── ...
│           ├── models.py   
│           ├── static
│           │   └── style.css
│           ├── templates
│           │   └── polls
│           │       ├── index.html
│           │       └── taskEdit.html
│           ├── tests.py
│           ├── urls.py
│           └── views.py
├── pod.yaml   #Arquivo Pod que o podman se baseia
├── PostgreProject
│   └── Dockerfile
├── README.md
└── scripts   #Arquivos sh para deixar o uso facilitado
    ├── remove.sh
    ├── run.sh
    ├── stop.sh
    └── sucessoEcho.sh
```

## 4.Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.

## 5.Contato

Nome: Arthur Rabelo

Email: arthur.rabel@outlook.com

LinkedIn: [Arthur Rabelo](https://www.linkedin.com/in/arthur-da-mata-rabelo-5663871b6/)
