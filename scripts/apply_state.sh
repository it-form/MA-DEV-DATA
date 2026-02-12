#!/bin/bash
set -e
source desired-state/lamp.env
# Apache
sudo apt install -y apache2
sudo sed -i "s/Listen .*/Listen ${APACHE_PORT}/" /etc/apache2/ports.conf
# PHP
sudo apt install -y php${PHP_VERSION} libapache2-mod-php${PHP_VERSION}
# MySQL
sudo apt install -y mysql-server
sudo mysql < infra/mysql.sql
sudo systemctl restart apache2 mysql

