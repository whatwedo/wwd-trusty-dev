#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install golang
curl -s https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar -v -C /usr/local -xz

#Add go to path
echo 'export PATH=$PATH:/usr/local/go/bin:/go/bin' >> /home/vagrant/.bashrc