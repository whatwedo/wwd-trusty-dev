#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install sqlite
apt-get install -y sqlite3 libsqlite3-dev