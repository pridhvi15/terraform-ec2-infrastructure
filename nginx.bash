#!/bin/bash
apt update 
apt install nginx -y

hostname > /var/www/html/index.html