#!/bin/bash
sudo apt remove -y apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php$1    
sudo apt install -y ufw nginx git
sudo timedatectl set-timezone Asia/Ho_Chi_Minh
# web folder
mkdir ~/web
sudo cat > /etc/nginx/conf.d/gzip.conf << EOF
gzip_comp_level 5;
gzip_min_length 256;
gzip_proxied any;
gzip_vary on;
gzip_types
application/atom+xml
application/javascript
application/json
application/rss+xml
application/vnd.ms-fontobject
application/x-font-ttf
application/x-web-app-manifest+json
application/xhtml+xml
application/xml
font/opentype
image/svg+xml
image/x-icon
text/css
text/plain
text/x-component;
EOF
sudo service nginx restart
# sudo service nginx status
#/var/www/html/index.html
