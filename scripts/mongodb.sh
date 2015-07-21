#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Add MongoDB Repo
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
add-apt-repository 'deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse'
apt-get update -y

#Install Mongo DB
apt-get install -y mongodb-org

#Remove from runlevel and stop
sed -i 's/^start\son/#start on/g' /etc/init/mongod.conf
service mongod stop || true