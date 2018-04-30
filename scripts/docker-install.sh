#!/bin/bash

#install docker
sudo yum install -y epel-release
sudo yum update -y
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce

#add current user to docker group
sudo groupadd docker
sudo usermod -aG docker $USER

#enable docker daemon to startup automatically
sudo systemctl enable docker
sudo systemctl start docker

#notify user they need to log out and back in
echo '
Done!  You need to log out and back in, in order for the settings to take effect.'
