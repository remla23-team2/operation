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
# Assignment 2

Begin by installing the Prometheus stack using the following commands:

```sh
$ helm repo add prom-repo https://prometheus-community.github.io/helm-charts
$ helm repo update
$ helm install myprom prom-repo/kube-prometheus-stack
```

Apply the `restaurant-sentiment.yml` configuration with this command:

```sh
$ kubectl apply -f restaurant-sentiment.yml
```

Access the Prometheus and Grafana pages with these commands:

```sh
$ minikube service myprom-kube-prometheus-sta-prometheus --url
$ minikube service myprom-grafana --url
```

The default username and password for Grafana are admin and prom-operator.

Add the Grafana dashboard by importing the `dashboard_team2.json` file in the dashboard.

After running minikube tunnel in another terminal, you can access the front end page using this link: localhost/app

And you can access the metrics served to Prometheus using this link: localhost/metrics

# Assignment 3

Follow the instructions above and install Prometheus. Don't forget to start minikube.

Download istio using the following intructions: https://istio.io/latest/docs/setup/install/istioctl/

Install istio using the following command:

```sh
istioctl install
```

Instead of using the restaurant-sentiment.yml file, use helm to install the application:

```sh
helm install rest ./restaurant_chart 
```

Access the Prometheus and Grafana pages with the commands mentioned above.