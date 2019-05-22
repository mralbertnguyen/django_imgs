#pull base image
FROM python:3.7-alpine

# Maintainer - optional
MAINTAINER Alert Nguyen Ltd

ENV PYTHONUNBUFFERED 1

# install all the depend
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D albert
USER albert
