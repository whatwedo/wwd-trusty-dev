#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install PHP
apt-get install -y php5-cli php5-common php5-cgi php5-curl php5-imagick php5-imap php5-pgsql php5-sqlite php5-mysql php5-fpm php5-mcrypt php5-ldap php5-json php5-intl php5-gd

#Set php.ini defaults
echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini

#Install composer
curl -sS https://getcomposer.org/installer | php 
mv composer.phar /usr/local/bin/composer

#Install symfony installer
curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony

#Install wordpress
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

#Install laravel
composer global require "laravel/installer=~1.1"

#Remove php-fpm from runlevel and stop
sed -i 's/^start\son/#start on/g' /etc/init/php5-fpm.conf
service php5-fpm stop || true