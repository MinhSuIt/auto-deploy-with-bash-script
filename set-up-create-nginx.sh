#!/bin/bash
# here
sudo cp set-up-create-nginx-template.txt /etc/nginx/sites-available/$1.conf
sudo sed -i "s/HOST_NAME/$1/g" /etc/nginx/sites-available/$1.conf
sudo sed -i "s/PHP_VERSION/$2/g" /etc/nginx/sites-available/$1.conf
sudo service nginx restart
# $1 là domain
# $2 là php version truyền vào