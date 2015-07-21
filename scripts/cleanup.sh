#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

apt-get -y autoremove
apt-get -y clean

#Cleaning up guest additions
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.? /home/vagrant/VBoxGuestAdditions.iso /home/vagrant/tmp

#Cleaning up dhcp leases
rm /var/lib/dhcp/*

#Cleanup temp
rm -rf /tmp/* /var/tmp/*

# Cleanup log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

# Remove bash history
unset HISTFILE
rm -f /root/.bash_history
rm -f /home/vagrant/.bash_history

#Zerodisk
dd if=/dev/zero of=/EMPTY bs=1M || true
rm -f /EMPTY
