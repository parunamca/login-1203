#!/bin/bash
echo "Update System"
sudo apt update -y

echo "Installing Utilities"
sudo apt install zip unzip -y

echo "Installing web server NGINX"
sudo apt install nginx -y

echo "cleanup document root"
sudo rm -rf /var/www/html/*

echo "Deploy login app"
sudo git clone https://github.com/parunamca/login-1203.git /var/www/html/

echo "application deployed -browse application using Public IP address "
