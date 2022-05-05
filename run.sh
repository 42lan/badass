#!/bin/bash

# Installation of Docker and GNS3
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.gns3.com/docs/getting-started/installation/linux
sudo apt-get update
sudo add-apt-repository -y ppa:gns3/ppa
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin gns3-gui gns3-server

# Add current user to the following groups
sudo usermod -aG kvm,libvirt,docker,ubridge,wireshark $USER
