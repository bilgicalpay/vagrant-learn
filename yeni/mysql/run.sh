#!/bin/bash

sudo mkdir -p /var/lib/mysql
sudo mkdir -p /mnt/mysql
sudo chown -R vagrant:vagrant /var/lib/mysql
sudo chown -R vagrant:vagrant /mnt/mysql
kubectl apply -f /workspace/projects/vkdp/mysql/mysql-pv.yaml
kubectl apply -f /workspace/projects/vkdp/mysql/deployment.yaml

