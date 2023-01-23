#!y/bin/bash
exec 0</dev/tty
# shellcheck disable=SC1090
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
echo -e "Then update Ubuntu"
echo -e

#Get username to add as sudo user
echo -e "Enter Username to add."
read  user_name # < /dev/tty
echo -e
# Add the username without asking for (name,room number, etc)
echo -e "Adding username $user_name"
echo
adduser --gecos "" "$user_name" # < /dev/tty
echo -e
# Add the created user to sudo
echo -e "Adding username $user_name to sudo"
usermod -aG sudo "$user_name" #< /dev/tty
echo -e
echo -e "User added to sudo"
echo -e

# Update the server and upgrade
echo -e "Updating..."
apt update && apt upgrade -y #< /dev/tty
echo -e
# Completed message
echo -e "Done Updating.....Complete"
