#!/bin/bash

# dependencies for docker
[[ ! -e /.dockerenv ]] && exit 0 set -xe

# install git for php
apt-get update -yqq
apt-get install git -yqq

# install phpunit, for testing
curl --location --output /usr/local/bin/phpunit https://phar.phpunit.de/phpunit.phar
chmod +x /usr/local/bin/phpunit

#other extension
docker-php-ext-install pdo_mysql
