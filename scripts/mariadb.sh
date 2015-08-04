#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Edit sources
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
add-apt-repository 'deb http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'
apt-get update

#Install MariaDB
apt-get install -y mariadb-server

#Set default config
sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
echo "mysqld_safe &" > /tmp/config && \
echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config && \
echo "mysql -e 'DROP DATABASE IF EXISTS test'" >> /tmp/config && \
echo "mysql -e 'SET PASSWORD FOR \"root\"@\"%\" = PASSWORD(\"\");'" >> /tmp/config && \
bash /tmp/config && \
rm -f /tmp/config

#Remove from runlevel and stop
update-rc.d -f mysql remove
/etc/init.d/mysql stop