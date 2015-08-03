#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Node
apt-get install -y npm nodejs
ln -s /usr/bin/nodejs /usr/bin/node

#Grunt
npm install -g grunt-cli

#Bower
npm install -g bower

#Gulp
npm install -g gulp

#npm-check-updates
npm install -g npm-check-updates

#bower-update
npm install -g bower-update

#localtunnel
npm install -g localtunnel

#uglify-js
npm install -g uglify-js

#Install less
npm install -g less