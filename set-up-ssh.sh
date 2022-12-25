#!/bin/bash
sudo cp id_rsa ~/.ssh/id_rsa
sudo cp id_rsa.pub ~/.ssh/authorized_keys
sudo cp id_rsa.pub ~/.ssh/id_rsa.pub
# Thêm public key này lên github ssh key
# GCP vào edit của instance virtual magine thêm ssh là id_rsa.pub