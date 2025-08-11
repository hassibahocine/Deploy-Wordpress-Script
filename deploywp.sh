#!/bin/bash

# WordPress VM Deployment Script (CentOS)

set -e  # Exit on any error

echo "=== Installing required packages ==="
yum install -y php php-mysqlnd httpd wget tar

echo "=== Downloading WordPress ==="
cd /var/www/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz

echo "=== Configuring Apache ==="
# Update Apache's document root from /var/www/html to /var/www/wordpress
sed -i -e '124 s/html/wordpress/' /etc/httpd/conf/httpd.conf

echo "=== Starting Apache service ==="
systemctl enable httpd
systemctl start httpd

echo "=== Setting permissions for WordPress directory ==="
chown -R apache:apache /var/www/wordpress
chmod -R 755 /var/www/wordpress

echo "=== Deployment complete! ==="
echo "Visit your server's public IP in a browser to finish WordPress setup."

