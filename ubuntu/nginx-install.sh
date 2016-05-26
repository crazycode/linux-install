#!/bin/bash

sudo apt-get update
sudo apt-get -y install nginx

# custom directory to store access logs
sudo mkdir /opt/logs/nginx -p
sudo chown www-data:www-data /opt/logs/nginx
