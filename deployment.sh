#!/bin/bash

set -x 

sudo apt-get update

sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y


sudo apt-get install git docker-compose python3 zip  -y

git clone https://github.com/nareshmahato332/firstapp.git

cd firstapp

sudo zip -r firstapp.zip *

sudo docker build   --build-arg env_project_name=firstapp  -t firstapp --no-cache .

cd ..

git clone https://github.com/nareshmahato332/proxyserver.git

cd proxyserver

sudo docker build -t proxynginx .

sudo docker-compose up -d

curl localhost/hello
