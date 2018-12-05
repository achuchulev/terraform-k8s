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

scripts/provision.sh that:

- install java-jdk required for jenkins to run
- install jenkins
- enable and start jenkins service
- print Jenkins unlock password

## Configure Jenkis


