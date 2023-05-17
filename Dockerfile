FROM alpine:latest

WORKDIR /app

EXPOSE 3000
EXPOSE 8080

COPY . /app