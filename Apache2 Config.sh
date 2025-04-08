sudo vim /etc/apache2/sites-available/000-default.conf
#below steps is to enable our proxy modules
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod headers
sudo a2enmod rewrite
sudo systemctl restart apache2
sudo apache2 -t