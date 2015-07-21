#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install locales
apt-get install -y language-pack-en
locale-gen en_US
update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

#Install localepurge
apt-get install -y localepurge