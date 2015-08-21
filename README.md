#whatwedo - wwd-trusty-dev
We at [whatwedo](https://whatwedo.ch/) are often devloping applications in VM's. The installation of every VM takes a bunch of time and the maintenance of the different VM's is a real pain. So we decided to use one big base box for all projects.

##Requirements
* [Virtualbox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)

##Usage

###Start
To use the fully configured VM just run the following commands:

```
wget https://raw.githubusercontent.com/whatwedo/wwd-trusty-dev/master/Vagrantfile
vagrant up
```


##System Settings

| Setting | Value |
|---|---|
| Operating System | Ubuntu 14.04.2 |
| Hostname | wwd-trusty-dev |
| Domain | vagrant.local |
| eth0 (NAT) | DHCP |
| eth1 (Host-Only)  | DHCP |
| Vagrant Box | [whatwedo/wwd-trusty-dev](https://atlas.hashicorp.com/whatwedo/boxes/wwd-trusty-dev) |

##Logins

| Description | Username | Password |
|---|---|---|
| Local User | vagrant | vagrant |
| MySQL | root | <empty> |
| Postgres | postgres | postgres |

##Installed software and packages

* apache2
* apt-transport-https
* bower
* bower-update
* build-essential
* bundler
* ca-certificates
* capifony
* capistrano
* cloc
* composer
* couchdb
* curl
* dnsutils
* docker
* docker-compose
* docker-nuke
* elasticsearch
* git
* golang
* grunt-cli
* gulp
* java
* language-pack-en
* laravel
* less
* libapache2-mod-php5
* libpcre3-dev
* libsqlite3-dev
* libssl-dev
* localepurge
* localtunnel
* m4
* mailcatcher
* mariadb-server
* mercurial
* mongodb-org
* nfs-common
* nginx
* ngrep
* nodejs
* npm
* npm-check-updates
* php5-cgi
* php5-cli
* php5-common
* php5-curl
* php5-fpm
* php5-gd
* php5-imagick
* php5-imap
* php5-intl
* php5-json
* php5-ldap
* php5-mcrypt
* php5-mysql
* php5-pgsql
* php5-sqlite
* phpunit
* portmap
* postgresql
* postgresql-client
* puppet
* python-dev
* python-pip
* redis-server
* ruby
* software-properties-common
* sqlite3
* subversion
* symfony-installer
* telnet
* tomcat
* uglify-js
* unzip
* vim
* virtualbox-guest-utils
* wp-cli
* z
* zip
* zlib1g-dev

Each service of the above listed services is disabled per default. You have to start them manually.

##Update VM
There's a check on every startup which verfy if there is a newer vagrant box is available. If theres a newer version available you can use the following command to update:

```
vagrant box update && vagrant destroy && vagrant up
```

##Bugs and Issues
If you have any problems with this image, feel free to open a new issue in our issue tracker [https://github.com/whatwedo/wwd-trusty-dev/issues](https://github.com/whatwedo/wwd-trusty-dev/issues)

##License
This image is licensed under the MIT License. The full license text is available under [https://github.com/whatwedo/wwd-trusty-dev/blob/master/LICENSE](https://github.com/whatwedo/wwd-trusty-dev/blob/master/LICENSE).
