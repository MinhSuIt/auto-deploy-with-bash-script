#!/bin/bash
# thực hiện lệnh sudo mà ko cần trả lời password
# sudo useradd -m -p automation-user-password automation-user
sudo su <<EOF
echo "minhsudoit ALL=(ALL) ALL" >> /etc/sudoers
EOF