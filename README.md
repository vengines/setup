#-------------------------------------------------------------------------------
# SETUP SCRIPTS
# General Ubuntu Setup scripts to automate server installs and setups
# Debian/Ubuntu Base OS LXC Container in Proxmox
#-------------------------------------------------------------------------------
To run main setup script in proxmox goto console and run command from root

apt install -y curl && curl -sSL https://raw.githubusercontent.com/vengines/setup/main/setup_cont.sh | bash


