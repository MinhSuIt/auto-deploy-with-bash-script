#!/bin/bash
# với GCP VPS khi ssh lần đầu vào phải thiết lập mật khẩu để làm các thao tác khác
# sudo passwd => truy cập quyền root với mật khẩu vừa tạo bằng: su
# đăng nhập vào root bằng: su sau đó tạo mật khẩu cho tài khoản thực thi script là minhsudoit: passwd minhsudoit
# vào tài khoản minhsudoit chạy:
# sudo su <<EOF
# echo "minhsudoit ALL=(ALL) ALL" >> /etc/sudoers
# EOF
# Cách tự động password: https://www.baeldung.com/linux/passwd-shell-script

# bước set up ssh phải làm manual ko tự động đc, trong set-up-ssh.sh
source set-up-php.sh $2
source set-up-nginx.sh $2
source set-up-mysql.sh $2

source set-up-project-folder.sh $3
source set-up-create-database.sh $4
source set-up-create-nginx.sh $1 $2
# bash set-up-server.sh DOMAIN PHP_VERSION GITHUB_SSH_URL DB_NAME
# bash set-up-server.sh abc.com 8.1 git@github.com:MinhSuIt/test.git abc