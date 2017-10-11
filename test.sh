#!/bin/sh
echo "This is test.sh "

sudo apt-get install openjdk-7-jdk
sudo apt-get install openjdk-7-jre
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add - 
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo apt-get update 
sudo apt-get install jenkins

sudo apt-get update 
sudo apt-get install jenkins


