#!/bin/bash

apt-get update

apt-get install -y apache2
apt-get install -y curl
apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-dev php-pear php-curl php-cli php-mcrypt curl php-xml php-redis

debconf-set-selections <<< 'mysql-server mysql-server/root_password password ubuntu'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ubuntu'

apt-get -y install mysql-server