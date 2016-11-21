#!/bin/bash

WebRoot="/var/www/html/"
VhostDir="/etc/apache2/sites-available/"
UrlExt=".ldev"

# Add entry in hosts.
sudo echo "127.0.0.1  $SiteName" >> /etc/hosts

# Create virtual host entry.
cp "bin/VHOST-STRUCT" $VhostDir$SiteName$UrlExt
sed -i "s|SITENAME|$SiteName$UrlExt|g" $VhostDir$SiteName$UrlExt
sed -i "s|SITEDIRECTORY|$WebRoot$SiteName|g" $VhostDir$SiteName$UrlExt
