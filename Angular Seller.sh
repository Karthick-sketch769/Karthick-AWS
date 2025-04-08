#!/bin/bash
sudo apt update -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
udo npm install -g angular-cli -y
sudo npm install -g pm2 -y
sudo node -v
sudo npm -v
sudo nvm -v
sudo nvm use verison #version given in curl command or we set there
sudo npm i #you need to use for evry project at first and then if any ipdate in package
sudo npm run large-build 
sudo npm start
sudo npm status