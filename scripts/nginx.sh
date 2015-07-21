#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install nginx
apt-get install -y nginx libpcre3-dev libssl-dev zlib1g-dev

#Remove from runlevel and stop
update-rc.d -f nginx remove
/etc/init.d/nginx stop