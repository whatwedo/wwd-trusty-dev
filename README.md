#whatwedo - wwd-trusty-dev
We at [whatwedo](https://whatwedo.ch/) are often devloping applications in VM's. One [Vagrant VM](https://www.vagrantup.com/) per project would be the perfect solution but it can cause problems if you are working on a lot of different projects. The installation of every VM takes a bunch of time and the maintenance of the different VM's is a real pain. So we decided to use one VM for all projects.

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
| eth1 (Host-Only)  | 192.168.192.168 |
| Vagrant Box | [whatwedo/wwd-trusty-dev](https://atlas.hashicorp.com/whatwedo/boxes/wwd-trusty-dev) |

##Logins
| Description | Username | Password |
|---|---|---|
| Local User | vagrant | vagrant |
| MySQL root user | root | root |
| Postgres root user | postgres | postgres |

##Installed software and packages

* apache2
* apt-transport-https
* bower
* bower-update
* build-essential
* bundler
* ca-certificates 
* cloc
* composer
* couchdb
* curl
* dnsutils
* docker
* docker-compose
* elasticsearch
* git
* golang
* grunt-cli
* gulp
* ibapache2-mod-php5
* java
* language-pack-en
* laravel
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
* postgresql
* postgresql-client
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
* unzip
* vim
* virtualbox-guest-utils
* wp-cli
* z
* zip
* zlib1g-dev

Each service of the above listed services is disabled per default. You have to start them manually.

##Bugs and Issues
If you have any problems with this image, feel free to open a new issue in our issue tracker [https://github.com/whatwedo/wwd-trusty-dev/issues](https://github.com/whatwedo/wwd-trusty-dev/issues)

##License
This image is licensed under the MIT License. The full license text is available under [https://github.com/whatwedo/wwd-trusty-dev/blob/master/LICENSE](https://github.com/whatwedo/wwd-trusty-dev/blob/master/LICENSE).
