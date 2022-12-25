#!/bin/bash
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'OpenSSH'
sudo ufw enable
sudo ufw status