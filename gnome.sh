#!/bin/bash

#https://wiki.debian.org/Gnome  &&  https://www.youtube.com/watch?v=zy-5UHC3t-Q


PKGS=(
        'gnome-core'                #  Core components of the GNOME Desktop environment
        'gedit'                     # Text editor
        'make'                      # general purpose dependency solver
        'gettext'                   # build depends for dash-to-dock
        'sassc'                     # build depends for dash-to-dock
        'fastfetch'                 # Fetching system information in terminal
        'numlockx'                  # Turn NumLock on
        'gparted'                   # Partition utility
        'unrar'                     # UnRar
        'rar'                       # Rar
        'timeshift'                 # Timeshift is a program used to make system back-ups/snapshots easily
        'vlc'                       # VLC is free software to play, transcode and broadcast video and audio files
)

sudo apt update && sudo apt upgrade

#Packages installer
for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" #-y #|| sudo pacman -S "$PKG" --noconfirm --needed
done

#remove apps
sudo apt purge ifupdown gnome-text-editor -y && sudo apt autoremove gnome-text-editor -y

sudo sed -i "s/managed=false/managed=true/" /etc/NetworkManager/NetworkManager.conf
echo "#########################################################"
echo "# Editing NetworkManager: managed=false to managed=true #"
echo "#########################################################"
read -p "Press Enter to edit"
sudo nano /etc/NetworkManager/NetworkManager.conf
#Check system|network|IPv4 and make sure static ip address or dhcp is set properly

echo "Press [enter] to reboot"; read enterKey
sudo shutdown -r now      #reboot
