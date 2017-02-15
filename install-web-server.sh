#!/bin/sh

yum -y install httpd24

echo "<h6> Hello AWS class</h6>" >> /var/www/html/index.html
service httpd start


