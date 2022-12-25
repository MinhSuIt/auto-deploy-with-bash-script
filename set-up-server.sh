#!/bin/bash
# bước set up ssh phải làm manual ko tự động đc
# source set-up-ssh.sh

source set-up-php.sh $2
source set-up-nginx.sh $2
source set-up-mysql.sh $2
source set-up-project.sh $1 $2 $3
# bash set-up-server.sh DOMAIN PHP_VERSION GITHUB_SSH_URL
# bash set-up-server.sh abc.com 8.1 git@github.com:MinhSuIt/test.git