#Unifi Update or Inital Setup Script

echo "Unifi Controller Update or Setup"
echo
PS3="Select Update Or Install: "

select option in Update Install; do

  case $option in
    Update)
    echo
    echo "Running Update Script please wait..."
    echo
    rm unifi-update.sh &> /dev/null; wget https://get.glennr.nl/unifi/update/unifi-update.sh && bash unifi-update.sh
    break
    ;;

  Install)
    echo 
    echo "Running Install Script please wait..."
    echo
    rm unifi-latest.sh &> /dev/null; wget https://get.glennr.nl/unifi/install/install_latest/unifi-latest.sh && bash unifi-latest.sh
    break
    ;;
  esac
break
done
