#!/usr/bin/env bash
# 
#  Let start from begining
. versions

echo "######################################"
echo "Installing minikube"
echo "######################################"

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 \
  && sudo install docker-machine-driver-kvm2 /usr/local/bin/ && rm docker-machine-driver-kvm2

minikube config set memory 8192
minikube config set cpus 3
minikube config set vm-driver kvm2
minikube config set disk-size 64G
minikube config view

minikube start

minikube addons enable heapster
minikube addons enable dashboard
minikube addons enable ingress
minikube addons enable logviewer

minikube status
minikube service list


echo "######################################"
echo "Execute next step, please"
echo "######################################"

