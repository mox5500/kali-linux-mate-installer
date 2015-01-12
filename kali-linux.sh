#!/bin/bash

#Author : Da_master
#----------> FB : www.facebook.com/d3master.1990
#
##################################################
#source
##################################################
echo ""
echo ""
echo "This Tool Can installing Mate Desktop on Kali linux"
echo "Lets Rock!."
echo "--------------------------------------------------------"
echo "HOw to Use?: "
echo ""
echo "Put kali-linux.sh on Desktop"
echo ""
echo "In Command Line Type : cd Desktop; chmod 777 kali-linux.sh; ./kali-linux.sh"
echo ""
echo "--------------------------------------------------------"

echo "loading >>>"

echo " "

echo "deb http://packages.mate-desktop.org/repo/debian wheezy main" >> /etc/apt/sources.list

sh -c "sudo apt-get update"
sh -c "sudo apt-get --yes --quiet --allow-unauthenticated install mate-archive-keyring"
sh -c "sudo apt-get update"


red='\033[0;32m'
NC='\033[0m' # No Color
echo -e "${red}type number of your choice and hit Enter${NC}"
echo " "

PS3='Please enter your choice: '
options=("minimal MATE desktop" "complete MATE desktop" "complete MATE desktop including a few extras")
select opt in "${options[@]}"
do
    case $opt in
        "minimal MATE desktop")
            sh -c "sudo apt-get install mate-desktop-environment-core"
break
            ;;
        "complete MATE desktop")
            sh -c "sudo apt-get install mate-desktop-environment"
break
            ;;
        "complete MATE desktop including a few extras")
            sh -c "sudo apt-get install mate-desktop-environment-extras"
break
            ;;
        
        *) echo invalid option;;
    esac
done

echo "installed"


