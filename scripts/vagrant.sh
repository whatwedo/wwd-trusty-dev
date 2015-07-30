#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Set build time
date > /etc/vagrant_box_build_time

#Set vagrant keys
mkdir /home/vagrant/.ssh
wget --no-check-certificate \
    'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

#Install sync tools
apt-get install -y nfs-common portmap
