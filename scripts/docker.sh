#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install Docker
curl -sSL https://get.docker.com/ubuntu/ | sh

#Enable aufs
apt-get -y install linux-image-extra-$(uname -r) aufs-tools
apt-get -y install lxc-docker
service docker restart

#Use docker with vagrant user without sudo
gpasswd -a vagrant docker
service docker restart

#Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Remove from runlevel and stop
sed -i 's/^start\son/#start on/g' /etc/init/docker.conf
service docker stop || true