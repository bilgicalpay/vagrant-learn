#!/bin/bash

# Burada bir sorun var. şu an çalışıyor ama bir  iki kez permission hatası verdi. 
# hata alırsa vagrant ssh ile içine girip ilk 4 komutu alıştırmak gerek. 
sudo mkdir -p /var/lib/mysql
sudo mkdir -p /mnt/mysql
sudo chown -R vagrant:vagrant /var/lib/mysql
sudo chown -R vagrant:vagrant /mnt/mysql
kubectl apply -f /workspace/projects/vkdp/mysql/mysql-pv.yaml
kubectl apply -f /workspace/projects/vkdp/mysql/deployment.yaml

