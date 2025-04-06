#!/bin/bash 

#Enabling dash-to-dock & adding minimize/maximize/close buttons at first boot
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'


systemctl disable gnome-post-install.service 
rm -f /etc/systemd/system/gnome-post-install.service
rm -f /gnome-extensions.sh
