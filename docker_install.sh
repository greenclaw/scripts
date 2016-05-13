#!/bin/bash
#sudo apt-get install -y curl
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y apt-transport-https
echo "deb https://apt.dockerproject.org/repo debian-jessie main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update
sudo apt-get install -y docker-engine=1.11.0-0~jessie
sudo usermod -aG docker $USER
sudo apt-get install -y python-pip
sudo pip install docker-compose==1.7.0
