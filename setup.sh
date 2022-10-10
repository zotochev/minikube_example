#!/usr/bin/bash


minikube delete
#minikube start
minikube start --driver=virtualbox

minikube addons enable metallb

kubectl apply -f srcs/metallb/configmap.yaml
kubectl apply -f srcs/metallb/persistent_volume.yaml

eval "$(minikube -p minikube docker-env --shell=bash)"

# mariadb
docker build -t mysql_image srcs/mariadb
kubectl apply -f srcs/mariadb/srcs/mysql.yaml
kubectl apply -f srcs/mariadb/srcs/mysql_pvc.yaml

# postgres
# todo

# nginx
docker build -t nginx_image srcs/nginx
kubectl apply -f srcs/nginx/srcs/nginx.yaml

# tornado
docker build -t image_tornado_0 srcs/tornado_
kubectl apply -f srcs/tornado_/srcs/tornado_.yaml
