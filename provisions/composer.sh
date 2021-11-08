#! /bin/bash

echo -en "\n=== PROVISION: COMPOSER ===\n"

curl -sS https://getcomposer.org/installer -o composer-setup.php | bash
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
