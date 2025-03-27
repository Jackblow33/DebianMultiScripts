#!/bin/bash

##########   Working to install packages
# March 26 2025 - Select Debian with no dektop environnement ex. no KDE, gnome, etc...

#Link Debian-testing weekly build iso amd64
#https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-cd/debian-testing-amd64-netinst.iso

#echo $PATH
#apt install git
#cd /usr/local/bin
#git clone https://github.com/Jackblow33/DebianMultiScripts.git
#mv DebianMultiScripts/BaseDebian.sh /usr/local/bin
#chmod +x BaseDebian.sh
#./BaseDebian.sh

echo
echo "Base KDE Plasma instalation"
echo
# CMD='sudo apt install' #Debian -y
# CMD='sudo pacman -S'   #Arch   --noconfirm --needed
PKGS=(
        'kde-plasma-desktop'
        'plasma-discover'
        'plasma-pa'
        'plasma-nm'
        'kmenuedit'
        'firefox-esr'
        'fastfetch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG"

    echo "Removing some packages"
    sudo apt autoremove zutty kwalletmanager kdeconnect   
done

#add check for install successful
echo
echo "Congratulation!"
echo

read -p "Press enter to reboot............................"
reboot
--------------------------------------------------------------------
    
   
    #Enable Network manager
    #sudo systemctl enable NetworkManager
    #sudo systemctl start NetworkManager
    #Enable sddm so it get started on boot
    #sudo systemctl enable sddm
    #sudo systemctl start sddm


### TODO ###
#1-Add Bluetooth applet - find related pkg
    #bluedevil
    #bluetooth
#2-Cleanup menu and add menu editor config file + remove kmenuedit from install script
#3-option to remove or not screen brightness applet | laptop vs desktop
#4-deactivate top left screen edge /overview set to no action
#5-add commands from postinstall document
#6-add error checking, press enter, reboot
#100-install without emoji, konquerer, kedit - for now hidden from menu but still present...
