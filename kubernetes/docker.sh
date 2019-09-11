#!/usr/bin/env bash

#Uninstall old versions

sudo apt-get -y remove docker docker-engine docker.io containerd runc

#SET UP THE REPOSITORY

sudo apt-get update

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#INSTALL DOCKER ENGINE - COMMUNITY

sudo apt-get update

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get -y install \
        docker-ce \
        docker-ce-cli \
        containerd.io

sudo groupadd docker

sudo usermod -aG docker $USER
