#!/bin/bash

# Lazy Drupal
# Sets up Drupal development instance in Ubuntu.

if [[ $UID != 0 ]]; then
  echo "Please run this script with 'sudo'"
  echo "sudo bash $0 $*"
  exit 1
fi

echo "Awesome... You did it!"
