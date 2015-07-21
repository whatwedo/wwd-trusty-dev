#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install postgres
apt-get install -y postgresql postgresql-client

#Allow connections from everywhere
echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf

#Set default password
su postgres -c "psql -c \"alter user postgres password 'postgres';\""

#Remove from runlevel and stop
update-rc.d -f postgresql remove
/etc/init.d/postgresql stop