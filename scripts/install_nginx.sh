#!/bin/bash
apt-get update -y
apt-get install -y nginx
echo "<h1>Hello from </h1>" > /var/www/html/index.html
systemctl enable nginx
systemctl restart nginx
