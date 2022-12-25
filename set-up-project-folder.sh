#!/bin/bash
cd ~/web
sudo su <<EOF
git clone $1 
EOF
