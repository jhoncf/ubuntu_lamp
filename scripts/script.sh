#!/bin/bash

apt-get update

#APACHE
apt-get install -y apache2
a2enmod proxy_http
a2enmod ssl
a2enmod proxy
a2enmod proxy_balancer
a2enmod proxy_http
a2enmod rewrite
a2enmod headers

#NODEJS
apt-get install -y nodejs npm nodejs-legacy

#BOWER
npm install -g bower

#APIDOC
npm install apidoc -g

#MYSQL
debconf-set-selections <<< 'mysql-server mysql-server/root_password password ubuntu'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ubuntu'
apt-get -y install mysql-server

#PHP
apt-get install -y curl
apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-dev php-pear php-curl php-cli php-mcrypt curl php-xml php-redis php-mbstring

#COMPOSER
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer;

#PHPUNIT
cd ~/
wget https://phar.phpunit.de/phpunit.phar;
chmod +x phpunit.phar;
mv phpunit.phar /usr/local/bin/phpunit;


