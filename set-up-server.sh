#!/bin/bash
# bước set up ssh phải làm manual ko tự động đc
# source set-up-ssh.sh
# với GCP VPS khi ssh lần đầu vào phải thiết lập mật khẩu để làm các thao tác khác
# sudo passwd
source set-up-php.sh $2
source set-up-nginx.sh $2
source set-up-mysql.sh $2

source set-up-project-folder.sh $3
source set-up-create-database.sh $1
source set-up-create-nginx.sh $1 $2
# bash set-up-server.sh DOMAIN PHP_VERSION GITHUB_SSH_URL
# bash set-up-server.sh abc.com 8.1 git@github.com:MinhSuIt/test.git