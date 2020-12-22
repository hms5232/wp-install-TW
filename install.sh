#!/bin/bash


# Author: hms5232 ( https://github.com/hms5232/wp-install-TW )


sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install mariadb-server php7.4-fpm php7.4-mysql php7.4-xml php7.4-curl php7.4-common php7.4-zip php7.4-mbstring php7.4-imagick php7.4-gd nginx
# If you need WP-CLI, you shall uncomment the following line
#sudo apt install php7.4-dev

# https://tw.wordpress.org/download/
wget https://tw.wordpress.org/latest-zh_TW.tar.gz
tar -xvf latest-zh_TW.tar.gz
sudo mv wordpress /var/www
echo "Give permission to www-data."
sudo chown -R www-data /var/www/wordpress/

echo '｡:.ﾟヽ(*´∀`)ﾉﾟ.:｡ Done!'
