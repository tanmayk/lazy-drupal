#!/bin/bash

# Lazy Drupal
# Sets up Drupal development instance in Ubuntu.

if [[ $UID != 0 ]]; then
  echo "Please run this script with 'sudo'"
  echo "sudo bash $0 $*"
  exit 1
fi

SiteValidation="^[a-z0-9!#\$%&'*+/=?^_\`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_\`{|}~-]+)*?\$"

echo --------------------------------------------------------------------------
echo "Site Information"
echo --------------------------------------------------------------------------

while true
do
  echo
  read -p "Site name : " SiteName
  if [[ $SiteName =~ $SiteValidation ]] ; then
	export SiteName
        break
  else
    echo "Invalid site name. It should not contain space, special characters."
  fi
done

# Set up apache configurations.
echo
echo "Configuring Apache..."
sudo -E bash bin/apache.sh
