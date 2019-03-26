#!/usr/bin/env bash

# make sure apt database is up-to date
sudo apt update

# install tools
which wget curl telnet unzip &>/dev/null || {
  sudo apt install -y wget curl telnet unzip
}

# install java-jdk required for jenkins to run
which java &>/dev/null || {
  sudo apt install -y default-jdk
}

# install jenkins  
which jenkins &>/dev/null || {
  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt update
  sudo apt install -y jenkins
}

sudo systemctl enable jenkins.service
sudo systemctl start jenkins.service

sleep 10s

echo "Unlock Jenkins password is:" && sudo cat /var/lib/jenkins/secrets/initialAdminPassword
