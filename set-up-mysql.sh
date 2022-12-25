#!/bin/bash
sudo apt install -y mariadb-server php$1-mysql php$1-curl
# sudo apt remove -y mariadb-server php8.1-mysql php8.1-curl
sudo mysql_secure_installation

# Thiết lập mật khẩu tự động khi truy cập mysql mà ko cần trả lời: /etc/mysql/conf.d/mysql.cnf
#user và password tạo trong bước sudo mysql_secure_installation
sudo su <<EOF
echo "
user=root
password=root
" >> /etc/mysql/conf.d/mysql.cnf
EOF
sudo service mysql restart