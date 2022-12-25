#!/bin/bash
mysql -u root <<-EOF
CREATE DATABASE $1;
EOF
# bash set-up-create-database.sh databasename
# Thiết lập mật khẩu tự động khi truy cập mysql mà ko cần trả lời:
# /etc/mysql/conf.d/mysql.cnf
# [mysql]
# user=user của câu lệnh mysql -u
# password=password của user
# hoặc
# [client]
# user=user của câu lệnh mysql -u
# password=password của user