# Ruadhán Mac GP
# Create subdomain on localhost for apache2 on ubuntu

PATHTOAPACHE2=/etc/apache2/
PATHTOWWW=/var/www/

echo "Enter subdomain name for localhost:"
read WEBSITE

sudo mkdir -v /var/www/$WEBSITE

sudo echo "$WEBSITE" > /var/www/$WEBISTE/index.html

sudo cat $PATHTOAPACHE2/sites-available/000-default.conf > $PATHTOAPACHE2/sites-available/$WEBSITE.localhost.conf

sudo a2ensite $WEBISTE
sudo systemctl reload apache2