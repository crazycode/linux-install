#!/bin/bash

# see https://gorails.com/setup/ubuntu/16.04
sudo apt-get update
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

mkdir ~/tmp -p
cd ~/tmp
wget http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar -xzvf ruby-2.3.1.tar.gz
cd ruby-2.3.1/
./configure --prefix=/usr
make
sudo make install

echo Install success!
ruby -v

echo fix gem mirror...
# 处理SSL问题，加入国内gems镜像
gem sources --add http://gems.ruby-china.org/ --remove https://rubygems.org/
echo use ruby-china.org mirror.
gem sources -l

sudo gem install bundler
bundle config mirror.https://rubygems.org http://gems.ruby-china.org
