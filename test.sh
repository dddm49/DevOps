#!/bin/sh

# Jenkins install script for debian and ubuntu

# Jenkins
echo "Installing Jenkins CI Server"

add-apt-repository ppa:webupd8team/java
apt-get update
apt-get -y install oracle-java8-installer
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install jenkins
