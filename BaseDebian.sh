#!/bin/bash


#echo $PATH
#PATH=/home/$USER/github             #$USER = substitute with your own user name.
#apt install git
#mkdir /home/$USER/github
#chmod 700 /home/$USER/github
#git -C /home/$USER/github clone https://github.com/Jackblow33/DebianMultiScripts.git
#cd /home/$USER/github/DebianMultiScripts
#chmod +x BaseDebian.sh
#./BaseDebian.sh


PKGS=(
        'kde-plasma-desktop'    # KDE Plasma Desktop
        'plasma-discover'       # Graphical software manager
        'plasma-pa'             # Applet for audio volume
#        'plasma-nm'             # Applet network manager
        'kmenuedit'             # Menu editor
        'firefox-esr'           # Web browser
        'fastfetch'             # Fetching system information in terminal
)


timer_start()
{
BEGIN=$(date +%s)
}



timer_stop()
{
    NOW=$(date +%s)
    let DIFF=$(($NOW - $BEGIN))
    let MINS=$(($DIFF / 60))
    let SECS=$(($DIFF % 60))
    echo Time elapsed: $MINS:`printf %02d $SECS`
}


timer_start
#Updating package if necessary
sudo apt update && apt upgrade      #|| sudo pacman -Sy && sudo pacman -Syu

echo
echo "Base KDE Plasma instalation"
echo

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" -y #|| sudo pacman -S "$PKG" --noconfirm --needed
    
    #Removing some packages
    sudo apt purge zutty kwalletmanager kdeconnect -y  #Debian
done

#add check for install successful
echo
echo "Congratulation!"
echo
timer_stop
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


