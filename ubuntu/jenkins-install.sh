#!/bin/bash

# see http://pkg.jenkins-ci.org/debian/

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get -y install jenkins

# see https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu

# If your /etc/init.d/jenkins file fails to start jenkins, edit the /etc/default/jenkins to replace the line
#     HTTP_PORT=8080
# by
#     HTTP_PORT=8081
# Here, 8081 was chosen but you can put another port available.
