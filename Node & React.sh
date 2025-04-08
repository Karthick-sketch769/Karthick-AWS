#!/bin/bash
sudo apt update -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm install -g pm2 -y
#to start the app with pm2
pm2 start app.js
#to keep the application running after reboot
pm2 startup
pm2 save
#to logs
pm2 logs
sudo node -v
sudo npm -v
sudo nvm -v
#after install node/react use below comands for proxy
sudo vim /etc/nginx/sites-available/default or sites-enabled
# after open above path paste the below script and edit
server {
    listen 80;
    server_name your_domain_or_ip;  # Replace with your domain or IP address

    location / {
        proxy_pass http://localhost:3000;  # Node.js app is running on port 3000
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
#to enable the proxy
sudo ln -s /etc/nginx/sites-available/default
#to check the test S/F
nginx -t
#to allow the firewall trafic
sudo ufw allow 'Nginx Full'
# after seeting proxy put ur in code in required path then follow below steps
sudo nvm use verison
sudo npm i #you need to use for evry project at first and then if any ipdate in package
sudo npm run build
sudo npm start
sudo npm status
