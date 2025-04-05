#!/bin/bash

#https://wiki.debian.org/Gnome


sudo apt update && sudo apt upgrade
sudo apt install gnome-core  #or gnome-base    https://www.youtube.com/watch?v=zy-5UHC3t-Q
sudo apt purge ifupdown
#sudo shutdown -r now #reboot
echo "edit: managed=false to managed=true"
read -p "Press Enter to edit"
sudo nano /etc/NetworkManager/NetworkManager.conf
#Check system|network|IPv4 and make sure static ip address or dhcp is set properly
#sudo apt install gnome-session nautilus gnome-terminal git firefox-esr wget gedit
echo "Press [enter] to reboot"; read enterKey
sudo shutdown -r now      #reboot

###I#nstall gnome browser evtensions first: https://extensions.gnome.org/ OR better next
#sudo apt install gnome-shell-extension-manager  #gnome-shell-extension-prefs
###Add dash to dock: https://extensions.gnome.org/extension/307/dash-to-dock/
#cd /home/$USER/Download
#wget https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip
#unzip dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip \ -d ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com/
###Add minimize / maximize buttons
#gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
#gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
#gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
###Log out & login. That's it
#echo "Press [enter] to reboot"; read enterKey
#sudo shutdown -r now #reboot
###READ https://micheleg.github.io/dash-to-dock/download.html






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
