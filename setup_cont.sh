#!/usr/bin/env bash
# shellcheck disable=SC1090
exec 1</dev/tty 
# Proxmox container Ubuntu 22.04 Setup Script add user and mod to sudo group
# Author: VEngines Auto and Electronics
#--------------------------------------------------------------------------------
# Check for root to run script

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Setup -------------------------------------------------------------------------
# DONT ALLOW CONTINUATION WITH FAILED PARTS set -e

set -e
# start of script
echo -e "Proxmox container Ubuntu 22.04 Setup Script add user and mod to sudo group"
echo "Then update Ubuntu"
echo

#Get username to add as sudo user
echo "Enter Username to add."
read  user_name < &1
echo
# Add the username without asking for (name,room number, etc)
echo "Adding username $user_name"
echo
adduser --gecos "" "$user_name" < &1
echo
# Add the created user to sudo
echo "Adding username $user_name to sudo"
usermod -aG sudo "$user_name" < &1
echo
echo "User added to sudo"
echo

# Update the server and upgrade
echo "Updating..."
apt update && apt upgrade -y < /dev/tty
echo
# Completed message
echo "Done Updating.....Complete"
