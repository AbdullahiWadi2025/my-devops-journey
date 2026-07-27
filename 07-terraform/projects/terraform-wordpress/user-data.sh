#!/bin/bash

# Update system
apt update -y
apt upgrade -y


# Install Apache, PHP, MariaDB, and utilities
apt install apache2 php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-zip mariadb-server wget tar unzip -y


# Start services
systemctl start apache2
systemctl enable apache2

systemctl start mariadb
systemctl enable mariadb


# Create WordPress database and user

mysql -e "CREATE DATABASE wordpress;"

mysql -e "CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'StrongPassword123!';"

mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';"

mysql -e "FLUSH PRIVILEGES;"


# Download WordPress

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar -xzf latest.tar.gz


# Copy WordPress files

rm -rf /var/www/html/*

cp -r wordpress/* /var/www/html/


# Create wp-config.php

cd /var/www/html

cp wp-config-sample.php wp-config.php


# Configure database settings

sed -i "s/database_name_here/wordpress/" wp-config.php

sed -i "s/username_here/wordpressuser/" wp-config.php

sed -i "s/password_here/StrongPassword123!/" wp-config.php

sed -i "s/localhost/localhost/" wp-config.php


# Set permissions

chown -R www-data:www-data /var/www/html

chmod -R 755 /var/www/html


# Restart Apache

systemctl restart apache2