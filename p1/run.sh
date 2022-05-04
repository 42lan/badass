#!/bin/bash

# Installation of Docker
# https://docs.docker.com/engine/install/ubuntu/
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -a -G docker $USER

# Installation of GNS3
# https://docs.gns3.com/docs/getting-started/installation/linux
sudo add-apt-repository -y ppa:gns3/ppa
sudo apt update                                
sudo apt install -y gns3-gui gns3-server

# Pull & Contruction of Docker images
docker pull alpine:latest
docker build --file=Dockerfile_frr --tag=router_sucho .
