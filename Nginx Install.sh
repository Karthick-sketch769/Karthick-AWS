#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
#next set follow ngix congig step and proxy scriot then come back
#use below command
sudo ufw allow 'Nginx Full' #nginx proxy if it fails firewall use this command
sudo systemctl enable nginx
sudo systenctl start nginx
sudo systenctl reload nginx #again if you face nginx was inactive
