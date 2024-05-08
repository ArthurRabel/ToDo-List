FROM python:3.12.3

WORKDIR /mysite

RUN pip install Django psycopg

ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

COPY . .