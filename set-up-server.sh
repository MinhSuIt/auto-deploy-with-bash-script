#!/bin/bash
# với GCP VPS khi ssh lần đầu vào phải thiết lập mật khẩu để làm các thao tác khác
# set password cho tài khoản root: sudo su rồi passwd
# chuyển sang tài khoản root bằng: su sau đó tạo mật khẩu cho tài khoản thực thi script là minhsudoit: passwd minhsudoit

# Cách tự động password: https://www.baeldung.com/linux/passwd-shell-script

# bước set up ssh phải làm manual ko tự động đc, trong set-up-ssh.sh
# vào tài khoản root bằng lệnh su rồi chạy:
sudo su <<EOF
echo "minhsudoit ALL=(ALL) ALL" >> /etc/sudoers
EOF
source set-up-php.sh $2
source set-up-nginx.sh $2
source set-up-mysql.sh $2

source set-up-project.sh $1 $2 $3 $4
# bash set-up-server.sh DOMAIN PHP_VERSION GITHUB_SSH_URL DB_NAME
# bash set-up-server.sh abc.com 8.1 git@github.com:MinhSuIt/test.git abc