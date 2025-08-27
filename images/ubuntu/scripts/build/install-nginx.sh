#!/bin/bash -e
################################################################################
##  File:  install-nginx.sh
##  Desc:  Install Nginx
################################################################################

# Install Nginx
apt-get install -y nginx

# Disable nginx.service
systemctl is-active --quiet nginx.service && systemctl stop nginx.service
systemctl disable nginx.service

invoke_tests "WebServers" "Nginx"
