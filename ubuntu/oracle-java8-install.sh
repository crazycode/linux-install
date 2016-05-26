#!/bin/bash
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install oracle-java8-set-default
sudo apt-get -y install oracle-java8-unlimited-jce-policy
