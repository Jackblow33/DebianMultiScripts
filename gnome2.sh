#!/bin/bash

#https://wiki.debian.org/Gnome


sudo apt update && sudo apt upgrade
sudo apt install gnome-core  #or gnome-base    https://www.youtube.com/watch?v=zy-5UHC3t-Q
sudo apt install gedit make gettext sassc -y         #build dependencies included for compiling dash-to-dock
sudo apt purge gnome-text-editor -y && sudo apt autoremove gnome-text-editor -y
sudo apt purge ifupdown
sudo sed -i "s/managed=false/managed=true/" /etc/NetworkManager/NetworkManager.conf
echo "#########################################################"
echo "# Editing NetworkManager: managed=false to managed=true #"
echo "#########################################################"
read -p "Press Enter to edit"
sudo nano /etc/NetworkManager/NetworkManager.conf
#Check system|network|IPv4 and make sure static ip address or dhcp is set properly

echo "Press [enter] to reboot"; read enterKey
sudo shutdown -r now      #reboot
