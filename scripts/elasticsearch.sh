#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Add elasticsearch repo
wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
add-apt-repository 'deb http://packages.elasticsearch.org/elasticsearch/1.6/debian stable main'
apt-get update -y

#Install Elasticsearch
apt-get -y install elasticsearch

#Link config dir
ln -s /etc/elasticsearch /usr/share/elasticsearch/config

#Remove from runlevel and stop
update-rc.d -f elasticsearch remove
/etc/init.d/elasticsearch stop