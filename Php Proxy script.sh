#for ip/domain
server {
    listen 80;
    server_name 44.212.45.35;  # Replace with your actual domain or IP address
    root /var/www/html;  # Make sure this points to your application's root directory
    index index.php index.html index.htm;
    charset UTF-8;  # Set the character encoding to UTF-8

    # Handle root directory and static files
    location / {
        try_files $uri $uri/ /index.php?$args;  # If the file is not found, route to index.php
    }

    # Handle PHP files
    location ~ \.php$ {
        try_files $uri =404;  # If the PHP file is not found, return a 404 error
        include fastcgi_params;  # Include the FastCGI parameters
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;  # Pass the script filename to PHP-FPM
        fastcgi_split_path_info ^(.+\.php)(/.+)$;  # Handle paths with additional info after .php
        fastcgi_index index.php;  # Set the default PHP script to execute
        fastcgi_pass unix:/var/run/php/php8.3-fpm.sock;  # Adjust the PHP-FPM socket path
    }

    # Deny access to hidden files (e.g., .htaccess, .git)
    location ~ /\. {
        deny all;
    }
}