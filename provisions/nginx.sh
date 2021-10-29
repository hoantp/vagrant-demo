#! /bin/bash

echo -en "\n=== PROVISION: Nginx ===\n"

NGINX_VERSION="1.20.1"

cd /tmp
curl -L -O https://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key

echo "deb https://nginx.org/packages/mainline/ubuntu/ focal nginx" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://nginx.org/packages/mainline/ubuntu/ focal nginx" | sudo tee -a /etc/apt/sources.list

apt-get update && apt-get install -y nginx
cp /vagrant/config/nginx/nginx.conf /etc/nginx
cp /vagrant/config/nginx/default.conf /etc/nginx/conf.d

systemctl start nginx
systemctl enable nginx
