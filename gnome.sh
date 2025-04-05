#!/bin/bash

#Test first: https://extensions.gnome.org/extension/307/dash-to-dock/
#https://wiki.debian.org/Gnome

sudo apt update && sudo apt upgrade
sudo apt install gnome-core  #or gnome-base    https://www.youtube.com/watch?v=zy-5UHC3t-Q
sudo apt purge ifupdown
#sudo shutdown -r now #reboot
echo "edit: managed=false to managed=true"
read -p "Press Enter to edit"
sudo nano /etc/NetworkManager/NetworkManager.conf
#Check network and make sure static ip address or dhcp is set properly
sudo apt-install gnome-session nautilus gnome-terminal git firefox-esr wget gedit
sudo shutdown -r now #reboot






#How to Customize Gnome 42.2 in Debian Testing
#https://www.youtube.com/watch?v=A3_hajTrcFw

#MacOS like
#https://www.youtube.com/watch?v=l_j1ch8VCW8

#Gnome Extensions You Need to Know (Dash to Dock to Panel)
#https://www.youtube.com/watch?v=erwrZe_REYw

#https://askubuntu.com/questions/1106481/can-i-configure-gnome-to-show-open-windows-on-the-dock-individually
#*** List of extensiobs` https://boilingsteam.com/how-to-survive-gnome-with-gnome-extensions/

#Vitals extension
#https://www.youtube.com/watch?v=0BKDj5ORpX0
