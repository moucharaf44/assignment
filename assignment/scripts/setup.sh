#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service start httpd
sudo service enable httpd
sudo chkconfig httpd on
echo "<html><body><h1>Hello World</h1></body></html>" >> /var/www/html/index.html

