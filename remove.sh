# Ruadhán Mac GP
# Create subdomain on localhost for apache2 on ubuntu

PATHTOAPACHE2 = /etc/apache2/
PATHTOWWW = /var/www/

echo "Enter subdomain name to remove:"
read WEBSITE

sudo rm -rv /var/www/$WEBSITE

sudo a2dissite $WEBSITE
sudo systemctl reload apache2

sudo rm -v $PATHTOAPACHE2/sites-available/$WEBSITE.localhost.conf