#!/bin/bash -e

ctx logger info "Installing nginx..."
sudo apt-get -y install nginx
ctx logger info "Removing default application..."
sudo rm -f /etc/nginx/sites-enabled/default
ctx logger info "Done."