#!/usr/bin/env bash
# 
#  Let start from begining
. versions

echo "######################################"
echo "Installing minikube"
echo "######################################"

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo cp minikube /usr/local/bin && rm minikube

sudo apt install -y libvirt-clients libvirt-daemon-system qemu-kvm
sudo usermod -a -G libvirt $(whoami)
echo "######################################"
echo "to get access to kvm log out and log in or execute:# newgrp libvirt"
echo "######################################"

echo "######################################"
echo "Execute next step, please"
echo "######################################"

