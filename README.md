# Jenkins server installation on Ubuntu Xenial

### Prerequisites

- vagrant
- git
- virtualbox

## How to build

### Download repo

```
git clone https://github.com/achuchulev/xenial-jenkins.git
cd xenial-jenkins
```

### Run Vagrant box

```
vagrant up
```

Vagrant up run:

`scripts/provision.sh` that:

- install java-jdk required for jenkins to run
- install jenkins
- enable and start jenkins service
- print Jenkins administrator password

### Configure Jenkis

- [click to open Jenkins portal](http://127.0.0.1:8080/)
- unlock Jenkins using the administrator password to unlock password
- customize Jenkins selecting which plugins to install
- create account



