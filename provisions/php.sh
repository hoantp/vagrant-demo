#! /bin/bash

echo -en "\n=== PROVISION: PHP ===\n"

PHP_VERSION="7.4.23"

cd /tmp && rm -rf php-*
curl -L -O https://www.php.net/distributions/php-$PHP_VERSION.tar.gz
tar xzf php-$PHP_VERSION.tar.gz

cd /tmp/php-$PHP_VERSION
./configure --silent \
            --enable-fpm --with-fpm-systemd \
            --enable-bcmath --enable-mbstring --with-openssl
make --silent --jobs=4
make install

cp php.ini-development /usr/local/php/php.ini
cp sapi/fpm/php-fpm /usr/local/bin

cp /vagrant/config/php/php-fpm.conf /usr/local/etc/php-fpm.conf
cp /vagrant/config/php/www.conf /usr/local/etc/php-fpm.d/www.conf
cp /vagrant/config/php/php-fpm.service /lib/systemd/system/php-fpm.service

systemctl start php-fpm
systemctl enable php-fpm
