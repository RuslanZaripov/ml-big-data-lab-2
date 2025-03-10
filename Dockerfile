FROM python:3.8-slim

RUN apt-get update && apt-get install -y curl

RUN apt-get install -y redis-server

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt

EXPOSE 8000
