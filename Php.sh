#!/bin/bash
#keep ur src code inside var/www/html
sudo apt update -y
#follow below command to check uodate version of php
sudo systemctl list-units --type=service | grep php
sudo apt install php8.3-fpm php-mysql -y
php -v
sudo systemctl start php8.3-fpm 
sudo systemctl enable php8.3-fpm
sudo systemctl status php8.3-fpm
sudo vim /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
#past the php proxy script after opening the file using above command
#to test the configuration
sudo nginx -t
sudo systemctl reload nginx
#to verify the configuration open the below
sudo vim /var/www/html/info.php
#paste the below scripot after opening the above file
<?php
phpinfo();
?>
#put ur src code in this path /var/www/html
#now paste ur ip in webside using port 80 to check php working
#to secure ur server if needed remove info.php file fronm the last command
#if u facing eror for runing in website use below steps
sudo systemctl status php8.3-fpm
sudo systemctl start php8.3-fpm
#if u face error to see the errors/ use this path also /var/log/php7.x-fpm.log
sudo tail -f /var/log/nginx/error.log
#after success setupn of nginx,php and db use below steps for build and deploy app manual whenever code pushed
composer init  # Initializes a new composer project
composer install  # Installs project dependencies
composer dump-autoload  # Regenerate autoloader (if needed)
vendor/bin/phpunit tests/  # Run the tests in the 'tests' directory
#give necessary rights to our file
sudo chown -R www-data:www-data /var/www/html/your-php-app
sudo chmod -R 755 /var/www/html/your-php-app





