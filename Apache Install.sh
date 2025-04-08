#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
#next set follow Apache congig step and proxy scriot then come back
#use below command
sudo ufw allow 'apache2 Full' #nginx proxy if it fails firewall use this command
sudo systemctl start apache2   # Ubuntu/Debian
sudo systemctl enable apache2  # Ubuntu/Debian
sudo systenctl reload apache2 #if you face nginx was inactive


