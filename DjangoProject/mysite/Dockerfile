FROM python:3.12.3

WORKDIR /mysite

RUN pip install Django psycopg

COPY . .

EXPOSE 8000

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]