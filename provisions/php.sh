#! /bin/bash

PHP_VERSION="7.4.23"

cd /tmp && rm -rf php-*
wget https://www.php.net/distributions/php-$PHP_VERSION.tar.gz
tar xvzf php-$PHP_VERSION.tar.gz

cd /tmp/php-$PHP_VERSION
./configure --enable-fpm --with-fpm-systemd \
            --enable-bcmath --enable-mbstring --with-openssl
make --jobs=4
make install

cp php.ini-development /usr/local/php/php.ini
cp sapi/fpm/php-fpm /usr/local/bin

cp /vagrant/config/php/php-fpm.conf /usr/local/etc/php-fpm.conf
cp /vagrant/config/php/www.conf /usr/local/etc/php-fpm.d/www.conf