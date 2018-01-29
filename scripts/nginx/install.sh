#!/bin/bash -e

exec >> ~/nginx-install.log 2>&1

ctx logger info "Installing nginx..."
sudo apt-get -y install nginx
ctx logger info "Removing default application..."
sudo rm -f /etc/nginx/sites-enabled/default
ctx logger info "Done."