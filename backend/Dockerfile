FROM python:3.13.0-alpine3.20

WORKDIR /

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./.env /.env

RUN pip install --no-cache-dir --upgrade -r /requirements.txt

COPY ./app /app

EXPOSE 8000
