#!/bin/bash

#Checking for Updates and updating packages
sudo yum check-update
sudo yum update


#Installing & enabling Apache then check status
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active

#Giving the current user $User the required permissions for creating and editing the index.html file within the default page
sudo chown -R $USER:$USER /var/www

#Edit the HTML page with a simple text after CD into the directory where that file is located
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Lets all level up!!</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Welcome to Level Up in Tech</h1>' >> index.html
echo '<h3>Gold Team</h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html

