#!/bin/bash
sudo yum update -y
sudo yum install -y nginx
sudo service nginx start

sudo sh -c 'echo "<html><body><h1>Hello World -prod</h1></body></html>" > /usr/share/nginx/html/index.html'