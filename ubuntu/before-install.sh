#!/bin/bash

# setup ubuntu

#1. set time zone
sudo dpkg-reconfigure tzdata

#2. set locale
sudo locale-gen zh_CN.UTF-8
sudo dpkg-reconfigure locales

#3. change apt source list
sudo sed -i.backup 's/us.archive.ubuntu.com/cn.archive.ubuntu.com/g' /etc/apt/sources.list

sudo apt-get update
sudo apt-get -y upgrade

#4 install base packages
sudo apt-get install -y build-essential
