# Deploy-Wordpress-Script/LAMP stack
This project contains a bash script that automatically deploys a WordPress site on a CentOS based Virtual Machine. It installs the required packages, configures Apache, downloads WordPress and prepares the environment for use - in one script. 
It's main functionality is to install Apache, PHP and MYSQL PHP extensions, without doing them invididually. Alongside downloading the latest version of WordPress, without having to do it separately. Updates the Apache configuration to set WordPress as the document root and then setting the correct file permissions so WordPress can run smoothly. It then starts and enables the Apache web server.

How to use this script:
1. Clone the repository
2. cd deploy-wordpress-script
3. chmod +x deploywp.sh
4. sudo ./deploywp.sh

After it has been deployed, open your VM's public IP address and complete the WordPress setup wizard!
