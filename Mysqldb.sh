#!/bin/bash
sudo apt update -y
sudo apt install mysql-server -y
#to secure you db use below command if they giving password
sudo mysql_secure_installation
sudo systemctl status mysql
sudo systemctl start mysql
sudo systemctl enable mysql
#enter your user & passwd to access it
sudo mysql -u root -p
#verify whether it is running or not
ps aux | grep mysqld
#if mysql was alreday installed but u updratinbg or reinstall use below command
sudo apt remove --purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*
sudo systemctl restart mysql
#to connect php and mysql use below script in var/www/html/index.php once u set u & p for db
<?php
$servername = "localhost";
$username = "myuser";  # MySQL username
$password = "mypassword";  # MySQL password
$dbname = "mydatabase";  # MySQL database name

# Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

# Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

