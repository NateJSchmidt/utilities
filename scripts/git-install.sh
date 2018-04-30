#!/bin/bash

sudo yum install -y epel-release
sudo yum update -y
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y git2u
echo '
Git install is complete!'
