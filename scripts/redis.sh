#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

# Install redis-server
apt-get install -y redis-server
mkdir /var/data

#Remove from runlevel and stop
update-rc.d -f redis-server remove
/etc/init.d/redis-server stop