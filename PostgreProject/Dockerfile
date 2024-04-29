FROM postgres:latest

WORKDIR /PostgreProject

ENV POSTGRES_USER rabelo
ENV POSTGRES_PASSWORD 141014
ENV POSTGRES_DB db_teste

COPY . /docker-entrypoint-initdb.d/

EXPOSE 5432