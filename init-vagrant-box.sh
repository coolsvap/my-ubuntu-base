#!/bin/bash
apt update && apt -y full-upgrade && apt -y dist-upgrade
apt -y install git wget

rm /home/vagrant/.ssh/authorized_keys
wget https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chown -Rf vagrant:vagrant /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/authorized_keys
