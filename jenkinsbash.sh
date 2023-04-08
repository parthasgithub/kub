#! /bin/bash

#removing old version of java

yum remove java-1.8.0-openjdk-headless-1.8.0.262.b10-1.el7.x86_64 -y

yum  remove java -y

#install java openjdk

sudo yum -y install epel-release

sudo yum -y install java-11-openjdk


java -version


#installing jenkins on centos

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum -y install wget

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate

sudo yum -y install jenkins

sudo systemctl start jenkins

sudo systemctl enable jenkins

systemctl status jenkins

sudo systemctl start firewalld

sudo firewall-cmd --add-port=8080/tcp --permanent

sudo firewall-cmd --reload

sudo firewall-cmd --list-all



#unlocking jenkins on centos

cat /var/lib/jenkins/secrets/initialAdminPassword

#Message #notes-only

