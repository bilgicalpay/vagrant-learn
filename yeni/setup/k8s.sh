#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list


# kubectl :ve diğer gerekli işleri kurmak gerekiyor.  ref:https://medium.com/devopsturkiye/kubernetes-nedir-f4a6f326d036
# kubernetes-cni :podlar birbirini görmedi bu yüzden CNI kurduk. Ref: https://medium.com/codable/kubernetes-d090867428ca
# kubectl podlardaki agent 
# kubeadm yapılandırmak için gerekli plugin


sudo apt-get update  / centosdaki yum update ile aynı
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni 

# sanal eterneti bridge modunda enable ettik
sudo sysctl net.bridge.bridge-nf-call-iptables=1  

swapoff -a

# podların ip aralığını belirrrik. hata alırsa geç dedik
kubeadm init --pod-network-cidr=10.0.0.0/8 2>&1 || /bin/true

mkdir -p ~/.kube
sudo cp -rf /etc/kubernetes/admin.conf ~/.kube/config
# aşağıda içerdeki kullanıcıya yetki verdik. (user vagrant 999 gibi )
sudo chown $(id -u):$(id -g) ~/.kube/config

# Aşağıdaki satır, portlar blocklanmaması için  bu plugini kullandık. 
# yoksa tek tek elle firewall dosyalarına enable persistent demek gerekecekti. 
# Ref: https://www.weave.works/docs/net/latest/kubernetes/kube-addon/

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')" || /bin/true

kubectl create secret docker-registry my-secret --docker-server=docker.io --docker-username=bilgicalpay --docker-password=

#allow running pods on control plane
kubectl taint nodes --all node-role.kubernetes.io/master- || /bin/true
