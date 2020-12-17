#!/bin/bash


# Author: hms5232 ( https://gitlab.com/hms5232/wp-install-tw )


sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install mariadb-server nginx php7.4-fpm php7.4-mysql
# https://tw.wordpress.org/download/
wget https://tw.wordpress.org/latest-zh_TW.tar.gz
tar -xvf latest-zh_TW.tar.gz
sudo mv wordpress /var/www
sudo chown -R www-data /var/www/wordpress/
