#!/bin/bash


#echo $PATH
#PATH=/home/$USER/github             #$USER = substitute with your user name.
#apt install git
#mkdir /home/$USER/github
#chmod +rw /home/$USER/github
#git -C /home/$USER/github clone https://github.com/Jackblow33/DebianMultiScripts.git
#cd /home/$USER/github/DebianMultiScripts
#chmod +x BaseDebian.sh
#./BaseDebian.sh


# CMD_1='sudo apt install' #Debian -y
# CMD_2='sudo pacman -S'   #Arch   --noconfirm --needed
PKGS=(
        'kde-plasma-desktop'
        'plasma-discover'
        'plasma-pa'
        'plasma-nm'
        'kmenuedit'
        'firefox-esr'
        'fastfetch'
)


sudo apt update && apt upgrade            #Debian           Both= sudo apt update && apt upgrade || sudo pacman -Sy && sudo pacman -Syu
#sudo pacman -Sy && sudo pacman -Syu      #Arch linux
echo
echo "Base KDE Plasma instalation"
echo

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" -y
    
    #Removing some packages
    sudo apt purge zutty kwalletmanager kdeconnect -y  #Debian
done

#add check for install successful
echo
echo "Congratulation!"
echo

read -p "Press enter to reboot............................>>>"
reboot

    
   
### TODO ###
#1-Add Bluetooth applet - find related pkg
    #bluetooth bluez-meshd bluez-cups     # bluedevil 
#2-Cleanup menu and add menu editor config file + remove kmenuedit from install script
#3-Automated option to remove or not screen brightnest applet | laptop vs desktop with command hostnamectl
#4-deactivate top left screen edge /overview set to no action  #https://github.com/shalva97/kde-configuration-files?tab=readme-ov-file#screen-edges
#5-add commands from postinstall document
#6-add error checking, press enter, reboot
#7-unpin konquerer from task bar | pin firefox Konsole   #https://github.com/shalva97/kde-configuration-files
#9-remove konsole exit confirmation
#10-set google as default home page in firefox
#100-install without emoji, konquerer, kedit - for now hidden from menu but still present...

#Delete
    #Enable Network manager
    #sudo systemctl enable NetworkManager
    #sudo systemctl start NetworkManager
    #Enable sddm so it get started on boot
    #sudo systemctl enable sddm
    #sudo systemctl start sddm
