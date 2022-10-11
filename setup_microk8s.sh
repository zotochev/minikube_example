#!/usr/bin/env bash

microk8s start
microk8s dashboard-proxy

alias kubectl='microk8s kubectl'

microk8s enable metallb
microk8s enable dns

kubectl apply -f docker_config.yaml
kubectl apply -f srcs/metallb/configmap.yaml
kubectl apply -f srcs/metallb/persistent_volume.yaml

# mariadb
kubectl apply -f srcs/mariadb/srcs/mysql.yaml
kubectl apply -f srcs/mariadb/srcs/mysql_pvc.yaml

# nginx
kubectl apply -f srcs/nginx/srcs/nginx.yaml

# tornado
kubectl apply -f srcs/tornado_/srcs/tornado_.yaml
