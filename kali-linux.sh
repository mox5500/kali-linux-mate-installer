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
options=("minimal MATE desktop" "complete MATE desktop")
select opt in "${options[@]}"
do
    case $opt in
        "minimal MATE desktop")
            sh -c "sudo apt-get install mate-desktop-environment-core"
            sh -c "cp /etc/xdg/menus/mate-applications.menu mate-applications.menu.bak"
			awk '{ if ( $0 ~ /<!-- Internet -->/ ) {
          printf( "%s\n%s\n", "<!-- Kali Linux Menu --><MergeFile type=\"'path'\">applications-merged/kali-applications.menu</MergeFile>", $0 );
	  # could use the following to append
	  # printf( "%s\n%s\n", $0, "Some new appended text here" );
     } else {
          print $0;
     }
}' /etc/xdg/menus/mate-applications.menu > tmpmate.txt
cat tmpmate.txt > /etc/xdg/menus/mate-applications.menu
rm tmpmate.txt
break
            ;;
        "complete MATE desktop")
            sh -c "sudo apt-get install mate-desktop-environment"
            sh -c "cp /etc/xdg/menus/mate-applications.menu mate-applications.menu.bak"
			awk '{ if ( $0 ~ /<!-- Internet -->/ ) {
          printf( "%s\n%s\n", "<!-- Kali Linux Menu --><MergeFile type=\"'path'\">applications-merged/kali-applications.menu</MergeFile>", $0 );
	  # could use the following to append
	  # printf( "%s\n%s\n", $0, "Some new appended text here" );
     } else {
          print $0;
     }
}' /etc/xdg/menus/mate-applications.menu > tmpmate.txt
cat tmpmate.txt > /etc/xdg/menus/mate-applications.menu
rm tmpmate.txt
break
            ;;
        
        
        *) echo invalid option;;
    esac
done

echo "installed"



