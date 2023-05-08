# Docker Compose Quickstart

This repository contains a `docker-compose.yml` file that can be used to quickly launch a containerized application.

## Prerequisites

Before using this `docker-compose` file, you'll need to have the following software installed on your machine:

- Docker Engine
- Docker Compose

## Running the Application

To launch the application using Docker Compose, simply run the following command:

```sh
$ docker-compose up -d
```

This will start all of the containers defined in the `docker-compose.yml` file in detached mode, so you can continue using your terminal.

If you want to see the logs from the containers, you can run:

```sh
$ docker-compose logs -f
```

## Stopping the Application

To stop the application and shut down the containers, run:

```sh
$ docker-compose down
```