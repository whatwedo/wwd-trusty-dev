#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install git
apt-get install -y git

#Install Mercurial
apt-get install -y mercurial

#Install SVN
apt-get install -y subversion
