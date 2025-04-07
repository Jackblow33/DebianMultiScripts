#!/bin/bash 

#Source https://askubuntu.com/questions/156771/run-a-script-only-at-the-very-first-boot

#Enabling dash-to-dock, freon & adding minimize/maximize/close buttons at first boot
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gnome-extensions enable freon@UshakovVasilii_Github.yahoo.com


systemctl disable gnome-post-install.service 
rm -f /etc/systemd/system/gnome-post-install.service
rm -f /gnome-extensions-final.sh
#rm -r /home/$USER/debianmultiscripts
