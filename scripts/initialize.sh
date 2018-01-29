#!/bin/bash -e

exec >> ~/initialize.log 2>&1

ctx logger info "Adding OpenJDK's repository..."
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get -y update
sudo apt-cache policy openjdk-8-jdk

ctx logger info "Installing OpenJDK..."
sudo apt-get -y update
sudo apt-get -y install openjdk-8-jdk

ctx logger info "Installing Git..."
sudo apt-get -y install git

ctx logger info "Done."
