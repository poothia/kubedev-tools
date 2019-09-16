#!/usr/bin/env bash

#setting up env
sudo apt-get update
sudo apt-get -y install python3
sudo apt-get -y install python3-pip
sudo apt-get -y install git
#cloning rally
git clone https://github.com/xrally/xrally-kubernetes

#installing rally
cd xrally-kubernetes
sudo pip3 install -r requirements.txt
sudo pip3 install -r test-requirements.txt
sudo python3 setup.py install

echo "

Useful Commands:

1-Create a DB

rally db create


2-Create the env

rally env create --name kubernetes --spec samples/platforms/cert-spec.yaml

or

rally env create --name kubernetes --spec samples/platform/apikey-spec.yaml


3-Check The env

rally env check


4-Run the tasks

rally task start samples/scenario/<tasks>
"

