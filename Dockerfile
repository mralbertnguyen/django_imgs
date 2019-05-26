FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
# Set app folder as root folder
WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/