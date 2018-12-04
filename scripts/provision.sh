#!/usr/bin/env bash

# make sure apt database is up-to date
apt-get update

# install tools
which wget curl telnet unzip &>/dev/null || {
  apt-get install -y wget curl telnet unzip
}

# check if nginx is installed
# install nginx if not installed
which nginx &>/dev/null || {
  echo No, nginx is not installed
  apt-get install -y nginx
  }
  
# install jenkins  
which jenkins &>/dev/null || {
  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt-get update
  sudo apt-get install jenkins
}

# install selinux tools
which setroubleshoot-server selinux-policy-devel  &>/dev/null || {
  apt-get install -y setroubleshoot-server selinux-policy-devel
  }

# install git
which git &>/dev/null || {
  apt-get install -y git
}
