#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni

sudo sysctl net.bridge.bridge-nf-call-iptables=1

swapoff -a

kubeadm init --pod-network-cidr=10.0.0.0/8 2>&1 || /bin/true

mkdir -p ~/.kube
sudo cp -rf /etc/kubernetes/admin.conf ~/.kube/config
sudo chown $(id -u):$(id -g) ~/.kube/config

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')" || /bin/true

kubectl create secret docker-registry my-secret --docker-server=docker.io --docker-username=bilgicalpay --docker-password=

#allow running pods on control plane
kubectl taint nodes --all node-role.kubernetes.io/master- || /bin/true
