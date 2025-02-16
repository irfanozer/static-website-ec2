#!/bin/bash -x

yum update -y
yum install -y httpd

FOLDER="https://raw.githubusercontent.com/irfanozer/static-website-ec2/refs/heads/main/static-web"

cd /var/www/html

wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

systemctl start httpd
systemctl enable httpd
