#!/bin/bash

docker build -t python-app .
docker tag python-app bilgicalpay/python-app
docker login --username=bilgicalpay
docker push bilgicalpay/python-app

kubectl apply -f deployment.yaml
