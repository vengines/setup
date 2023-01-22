#!/bin/bash
#Unifi Update or Inital Setup Script
#Author:  VEngines Auto & Electronics
#Scripts from unifi community not written by me

#--------------------------------------------------------------------------------
# Check for root to run script

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Credits to Original Author of Scrips and info
echo "Unifi Update/Install scripts are from GLENNR // UNIFI INSTALLATION SCRIPTS"
echo "Scripts are pulled directly from Authors maintained source"
echo "All Credits to the original Author for the awesome scripts"
echo
echo "# Author   |  Glenn R."
echo "# Email    |  glennrietveld8@hotmail.nl"
echo "# Website  |  https://GlennR.nl"
echo
echo "Supported OS: Ubuntu 16.04/18.04/18.10/19.04/19.10/20.04/20.10/21.04/21.10/22.04/22.10/23.04"
echo "and Debian 8/9/10/11/12"
echo

#Select what you would like to do
echo "Unifi Controller Update or Setup"
echo
PS3="Select Update Or Install: "

select option in Update Install Quit; do

  case $option in
    Update)
    echo
    echo "Running Update Script please wait..."
    echo
    rm unifi-update.sh &> /dev/null; wget https://get.glennr.nl/unifi/update/unifi-update.sh && bash unifi-update.sh
    echo
    break
    ;;

  Install)
    echo 
    echo "Running Install Script please wait..."
    echo
    rm unifi-latest.sh &> /dev/null; wget https://get.glennr.nl/unifi/install/install_latest/unifi-latest.sh && bash unifi-latest.sh
    echo
    break
    ;;
  Quit)
    echo
    echo "Quit --- Exiting"
    break
    ;;
  esac
break
done
echo
PS3="Would you like to install lets encrypt SSL into your unifi Controller? "
select tf in yes no; do

 case $tf in
    yes)
    echo
    echo "Installing Lets Encrypt SSL"
    echo "***Please make sure you have a domain name and A record pointing to the IP address of the server"
    echo "***Port 80 is required for the challenge, so port 80 needs to be OPEN/Port Forwarded."
    echo " ( There is a DNS challenge for users where port 80 is blocked by their ISP )"
    echo
    read -p "Press [Enter] key to start Install or Ctrl^C to Exit if Domain or Ports Not Ready..."
    rm unifi-easy-encrypt.sh &> /dev/null; wget https://get.glennr.nl/unifi/extra/unifi-easy-encrypt.sh && bash unifi-easy-encrypt.sh
    break
    ;;
    no)
    echo
    break
    ;;
 esac
break
done
