#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install couchdb
apt-get -y install couchdb 

#Remove from runlevel and stop
sed -i 's/^start\son/#start on/g' /etc/init/couchdb.conf
service couchdb stop || true