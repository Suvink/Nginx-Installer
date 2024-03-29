#!/bin/bash

#Install Figlet for the banner
sudo apt install figlet toilet 

#Banner
figlet -c Nginx Installer

#Install Nginx
echo "-----------------Installing Nginx-----------------"
sudo apt-get update || echo "Update Failed!"
sudo apt-get install nginx || set -e

#Install UFW
echo "-----------------Installing UFW-----------------"
sudo ufw app list || echo "Fetching Profile list failed!"
sudo ufw allow 'Nginx HTTP' || set -e

#Verify Installation
sudo ufw status || echo "UFW was not set up!"

#Setting up Nginx
systemctl status nginx || "Failed to fetch Nginx Status"