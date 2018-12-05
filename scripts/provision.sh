#!/usr/bin/env bash

# make sure apt database is up-to date
sudo apt-get update

# install tools
which wget curl telnet unzip &>/dev/null || {
  sudo apt-get install -y wget curl telnet unzip
}

# install java-jdk required for jenkins to run
which default-jdk &>/dev/null || {
  sudo apt-get install -y default-jdk
}

# install jenkins  
which jenkins &>/dev/null || {
  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt-get update
  sudo apt-get install -y jenkins
}

sudo systemctl enable jenkins.service
sudo systemctl start jenkins.service

sleep 15s

echo "Unlock Jenkins password is:" && sudo cat /var/lib/jenkins/secrets/initialAdminPassword
