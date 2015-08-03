#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install ruby from package sources
apt-get install -y ruby ruby-dev

#Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | sudo bash -s stable --ruby

#Set rvm permissions
chmod -R 777 /usr/local/rvm

#Install mailcatcher
gem install mailcatcher

#Install capistrano
gem install capistrano

#Install capifony
gem install capifony