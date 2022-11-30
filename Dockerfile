FROM ruby:3.1.1-slim as builder

RUN apt-get update

WORKDIR /app