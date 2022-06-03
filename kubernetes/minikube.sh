#!/usr/bin/env bash

#Installing Kubectl
sudo sh ./kubectl.sh

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

apt install conntrack
sudo install minikube /usr/local/bin

rm -rf minikube

minikube start --driver=none
