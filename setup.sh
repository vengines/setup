#!/usr/bin/env bash
# shellcheck disable=SC1090

# Proxmox container Ubuntu 22.04 Setup Script add user and mod to sudo group
# Author: VEngines Auto and Electronics
#--------------------------------------------------------------------------------
# Check for root to run script

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Get setup script
wget wget https://raw.githubusercontent.com/vengines/setup/main/setup_cont.sh

#make it exeucatible
chmod +x setup_cont.sh

#run the script
./setup_cont.sh
