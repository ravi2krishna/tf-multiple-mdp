#!/bin/bash
sudo yum -y install epel-release
sudo yum -y install ansible
sudo yum -y install git
git clone https://github.com/ravi2krishna/tf-multiple-mdp.git /home/centos
cd tf-multiple-mdp
ansible-playbook setup_ecomm.yml -i aws.ini
