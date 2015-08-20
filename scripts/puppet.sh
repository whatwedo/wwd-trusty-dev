#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Add puppetlabs sources
cd ~; wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
apt-get update
rm puppetlabs-release-trusty.deb

#Install puppet
#Puppet installation returns wrong error code
apt-get -y install puppet || true
