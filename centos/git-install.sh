#!/bin/bash

GIT_VERSION=2.8.3

# remove old git install (if exists)
yum remove -y git

# install dependencies
yum install -y wget curl-devel expat-devel gettext-devel openssl-devel zlib-devel
yum install -y gcc perl-ExtUtils-MakeMaker

# download latest git source
mkdir -p /usr/src
wget https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.gz
tar -zvxf git-$GIT_VERSION.tar.gz
cd git-$GIT_VERSION

make prefix=/usr all
make prefix=/usr install

# check
git --version
