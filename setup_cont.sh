#!/bin/bash
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
echo "Proxmox container Ubuntu 22.04 Setup Script add user and mod to sudo group"
echo "Enter Username to add."
read  user_name < /dev/tty
echo
echo "Adding username $user_name"
echo
adduser --gecos "" "$user_name"
echo
echo "Adding username $user_name to sudo"
usermod -aG "$user_name"
echo "DONE USER MODS"
echo
echo "Updating Server"
apt update && apt upgrade -y
echo
echo "DONE UPDATING"
echo
echo "FINISHED SETUP"

