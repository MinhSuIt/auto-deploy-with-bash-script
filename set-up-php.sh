#!/bin/bash
sudo apt -y update && sudo apt -y upgrade 
sudo apt install -y php$1
sudo apt install -y php$1-fpm
sudo apt install -y php$1-bcmath 
sudo apt install -y php$1-ctype
sudo apt install -y php$1-curl
sudo apt install -y php$1-dom
sudo apt install -y php$1-fileinfo
sudo apt install -y php$1-json 
sudo apt install -y php$1-mbstring 
sudo apt install -y php$1-openssl 
sudo apt install -y php$1-pcre 
sudo apt install -y php$1-PDO 
sudo apt install -y php$1-tokenizer 
sudo apt install -y php$1-xml 

php -v

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

composer -V