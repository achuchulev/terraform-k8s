#!/usr/bin/env bash

# make sure apt database is up-to date
sudo apt-get update

# install tools
which wget curl telnet unzip &>/dev/null || {
  sudo apt-get install -y wget curl telnet unzip
}

# check if nginx is installed
# install nginx if not installed
#which nginx &>/dev/null || {
#  echo No, nginx is not installed
#  sudo apt-get install -y nginx
#  }

# Configure nginx as a proxy for jenkins server from port 8080 to 80

# stop nginx service
#systemctl enable nginx
#systemctl stop nginx

# remove default conf of nginx
#[ -f /etc/nginx/sites-available/default ] && {
#  rm -fr /etc/nginx/sites-available/default
#}

# copy our nginx conf
#cp nginx.conf /etc/nginx/sites-available/default 

# start nginx service
#systemctl start nginx

# install java-jdk
which default-jdk &>/dev/null || {
  sudo apt-get install default-jdk
}

# install jenkins  
which jenkins &>/dev/null || {
  wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt-get update
  sudo apt-get install jenkins
}

systemctl enable jenkins.service
systemctl start jenkins.service

# install selinux tools
#which selinux-utils  &>/dev/null || {
#  sudo apt-get install -y selinux-utils
#  }

