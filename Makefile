# defaul shell
SHELL = /bin/bash

build:
    mvn clean install
    docker build --force-rm -t java-k8s .

run-app:
    stop-app
    rm-app
    docker run --name beerkubernetes -p 8080:8080 -d java-k8s:latest

stop-app:
    docker stop beerkubernetes

rm-app:
    stop-app
    docker rm beerkubernetes

k-setup:
	minikube -p beerstock start --cpus 2 --memory=4096; \
	minikube -p beerstock addons enable ingress; \
	minikube -p beerstock addons enable metrics-server; \
	kubectl create namespace stock
