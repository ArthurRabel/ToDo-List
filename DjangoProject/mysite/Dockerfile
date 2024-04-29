FROM python:3.12.3

WORKDIR /mysite

RUN python3 -m pip install Django

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]