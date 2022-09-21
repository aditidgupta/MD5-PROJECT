#! /bin/bash
sudo su
yum update -y
yum upgrade -y
wget https://sourceforge.net/projects/s3tools/files/s3cmd/2.0.2/s3cmd-2.0.2.tar.gz
tar xzf s3cmd-2.0.2.tar.gz
cd s3cmd-2.0.2/
yum install httpd -y
