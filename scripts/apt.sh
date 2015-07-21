#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Enable Ubuntu Universe and Multiverse.
sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

#Set Swiss mirrors
sed -i 's/http:\/\/us./http:\/\/ch./g' /etc/apt/sources.list

#Update package lists
apt-get update -y

#Upgrade system
apt-get upgrade -y

#Install https support for apt
apt-get install -y apt-transport-https ca-certificates software-properties-common

