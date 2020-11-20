# How to create subdomains on apache2.4
## **$WEBSITE = your website name**
* * *

## Made directory to contain your website files

	sudo mkdir /var/www/$WEBSITE

## Copy the default apache2 config file and rename new file to <webiste>.localhost.conf

	sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$WEBSITE.localhost.conf

## Get ready to edit the new .conf file

	sudo nano /etc/apache2/sites-available/$WEBSITE.localhost.conf

## Add the following two lines to the .conf file you just created;

	ServerName $WEBSITE.localhost
	ServerAlias $WEBSITE.localhost

### Change document root to

	DocumentRoot /var/www/$WEBSITE

## Enable the site you've created

	sudo a2ensite $WEBSITE.localhost.conf
	sudo systemctl reload apache2


_finished_
