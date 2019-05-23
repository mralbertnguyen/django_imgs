#pull base image
FROM python:3.7-alpine

# Maintainer - optional
MAINTAINER Alert Nguyen Ltd

ENV PYTHONUNBUFFERED 1

# RUN apk update && \
#     apk add --virtual build-deps gcc python-dev musl-dev && \
#     apk add postgresql-dev

# RUN pip install psycopg2

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev && pip install psycopg2
COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D albert
USER albert

# add db 
