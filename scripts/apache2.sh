#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install apache
apt-get install -y apache2

#Remove default files
rm -rf /var/www/html/*

#Install mod_php
apt-get install -y libapache2-mod-php5

#Remove from runlevel and stop
update-rc.d -f apache2 remove
/etc/init.d/apache2 stop