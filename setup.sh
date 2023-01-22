#!/bin/bash
# shellcheck disable=SC1090

# Proxmox container Ubuntu 22.04 Setup Script add user and mod to sudo group
# Author: VEngines Auto and Electronics
#--------------------------------------------------------------------------------
# Check for root to run script

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#----------Main Container Setup--------------------------------------------------
# Install Curl
apt install curl -y
echo

# Get and run remote setup script
curl -sSL https://raw.githubusercontent.com/vengines/setup/main/setup_cont.sh | bash

