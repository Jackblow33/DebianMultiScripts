#!/bin/bash


#echo $PATH
#PATH=/home/$USER/github             #$USER = substitute with your user name.
#apt install git
#mkdir /home/$USER/github
#chmod 700 /home/$USER/github
#git -C /home/$USER/github clone https://github.com/Jackblow33/DebianMultiScripts.git
#cd /home/$USER/github/DebianMultiScripts
#chmod +x BaseDebian.sh
#./BaseDebian.sh


# CMD_1='sudo apt install' #Debian -y
# CMD_2='sudo pacman -S'   #Arch   --noconfirm --needed
PKGS=(
        'kde-plasma-desktop'    # KDE Plasma Desktop
        'plasma-discover'       # Graphical software manager
        'plasma-pa'             # Applet for audio volume
        'plasma-nm'             # Applet network manager
        'kmenuedit'             # Menu editor
        'firefox-esr'           # Web browser
        'fastfetch'             # Fetching system information in terminal
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

#read -p "Install completed! Press Enter to boot............................>>>"

#Enable Network manager
     sudo systemctl enable NetworkManager
     sudo systemctl start NetworkManager
#Enable sddm so it get started on boot
    sudo systemctl enable sddm
#Boot    
    sudo systemctl start sddm


    
    ### Jackblow33 2025 #####################



    
    
   
### TODO ###
# plasma-nm setup
# Cleanup menu and add menu editor config file + remove kmenuedit from install script + up config file to github
# Automated option to remove or not screen brightnest applet | laptop vs desktop with command hostnamectl
# deactivate top left screen edge /overview set to no action  #https://github.com/shalva97/kde-configuration-files?tab=readme-ov-file#screen-edges
# add commands from postinstall document
# add error checking, press enter, reboot
# unpin konquerer from task bar | pin firefox Konsole   #https://github.com/shalva97/kde-configuration-files
# remove konsole exit confirmation
# set google as default home page in firefox
# install without emoji, konquerer, kedit - for now hidden from menu but still present...


