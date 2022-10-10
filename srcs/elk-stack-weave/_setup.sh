# https://medium.com/@HoussemDellai/rbac-with-kubernetes-in-minikube-4deed658ea7b
#kubectl apply -f 0_rbac.yml
#kubectl apply -f 1_elasticsearch.yml
#kubectl port-forward -n kube-system svc/elasticsearch-logging 9200:9200
#kubectl apply -f 2_logstash.yml
#kubectl apply -f 3_filebeat.yml
kubectl apply -f 4_kibana.yml
