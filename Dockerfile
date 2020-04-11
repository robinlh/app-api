FROM python:3.7-alpine
MAINTAINER Robin Hall

ENV PYTHONUNBUFFERED 1

# python requirements
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# app work directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create user for running apps only
RUN adduser -D user
USER user