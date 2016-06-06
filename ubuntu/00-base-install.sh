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
sudo apt-get install -y software-properties-common wget vim build-essential openssl libreadline6 libreadline6-dev libsqlite3-dev libmysqlclient-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf automake cmake libtool imagemagick libmagickwand-dev libpcre3-dev language-pack-zh-hans libevent-dev libgmp-dev libgmp3-dev
