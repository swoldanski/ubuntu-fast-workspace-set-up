#!/usr/bin/env bash
# 
# You can set current versions in version file 
. versions

echo "######################################"
echo "Installing k8s tools"
echo "######################################"

minikube status

echo "######################################"
echo "Installing kubectl"
echo "######################################"

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "Installing RBAC roles..."
kubectl apply --recursive --record --filename $(pwd)/rbac/

echo "######################################"
echo "Installing Helm"
echo "######################################"
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
  chmod 700 get_helm.sh
  ./get_helm.sh
  rm -f ./get_helm.sh

echo "Installing Helm in cluster (be patient, this can take up to 10 minutes)..."
helm init --upgrade --service-account tiller
# helm init --wait --upgrade

echo "######################################"
echo "Installing skaffold"
echo "######################################"
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/${SKAFFOLD_VER:-v0.23.0}/skaffold-linux-amd64
  chmod +x skaffold
  sudo mv skaffold /usr/local/bin

echo "######################################"
echo "Installing k9s"
echo "######################################"
curl -Lo k9s.tar.gz https://github.com/derailed/k9s/releases/download/${K9S_VER:-0.1.3}/k9s_${K9S_VER:-0.1.3}_Linux_x86_64.tar.gz
  tar -zxf k9s.tar.gz k9s
  chmod +x k9s
  sudo mv k9s /usr/local/bin
  rm k9s.tar.gz

echo "######################################"
echo "Installing stern"
echo "######################################"
curl -Lo stern https://github.com/wercker/stern/releases/download/${STERN_VER:-1.10.0}/stern_linux_amd64
  chmod +x stern
  sudo mv stern /usr/local/bin

echo "######################################"
echo "Are we ready with kubernetes?"
echo "######################################"

which minikube kubectl helm skaffold k9s stern

