#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

#Install tomcat
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.14/bin/apache-tomcat-8.0.14.tar.gz
tar -xzf apache-tomcat-8.0.14.tar.gz
mv apache-tomcat-8.0.14 /opt/tomcat
groupadd tomcat
useradd -g tomcat -d /opt/tomcat tomcat
usermod -G www-data tomcat
chown tomcat:tomcat /opt/tomcat -R

#Delete tomcat default apps
rm -rf /opt/tomcat/webapps/*

#Delete download
rm -f apache-tomcat-8.0.14.tar.gz