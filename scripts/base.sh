#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Update systen
apt-get update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r)

#Enable sudoing without password
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

#Disable reverse lookup on ssh connect
echo "UseDNS no" >> /etc/ssh/sshd_config

#Install zip and unzip
apt-get install -y zip unzip

#Install z
cd /usr/bin
wget https://raw.githubusercontent.com/rupa/z/master/z.sh
chmod 755 z.sh
echo '. /usr/bin/z.sh' >> /home/vagrant/.bashrc

#Set Motd
echo '
            __            __                       __     
 _      __ / /_   ____ _ / /_ _      __ ___   ____/ /____ 
| | /| / // __ \ / __ `// __/| | /| / // _ \ / __  // __ \
| |/ |/ // / / // /_/ // /_  | |/ |/ //  __// /_/ // /_/ /
|__/|__//_/ /_/ \__,_/ \__/  |__/|__/ \___/ \__,_/ \____/ 

           for any questions: welove@whatwedo.ch
' > /etc/motd

#Install build essential
apt-get install -y build-essential

#Install telnet
apt-get install -y telnet

#Install nslookup
apt-get install -y dnsutils

#Install curl
apt-get install -y curl

#Install vim
apt-get install -y vim

#Install m4
apt-get install -y m4

#Install ngrep
apt-get install -y ngrep
