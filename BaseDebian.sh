#!/bin/bash
########################################################################
# ENTER THE FOLLOWING COMMANDS BEFORE LOADING THIS SCRIPT ##############
#As user:
#PATH=/home/$USER/github                                               #
#sudo apt update && sudo apt upgrade                                   #
#sudo apt install git -y                                               #
#mkdir $PATH                                                           #
#chmod 700 $PATH          # give user Read/Write/execute permissions   #
#cd $PATH                                                              #
#sudo git clone https://github.com/Jackblow33/DebianMultiScripts.git   #
#cd DebianMultiScripts                                                 #
#chmod +x *.sh  # permission setting executable                        #
#./BaseDebian.sh         # Execute Script                              #
########################################################################

# Color variables
GREEN='\033[0;32m'
NC='\033[0m' #no color


# Variables, Packages install
PKGS=(
        'kde-plasma-desktop'        # KDE Plasma Desktop
        'plasma-discover'           # Graphical software manager
        'plasma-pa'                 # Applet for audio volume
        'kmenuedit'                 # Menu editor
        'firefox-esr'               # Web browser  # chmod a+x /path/to/file && source /path/to/script
        'fastfetch'                 # Fetching system information in terminal
#        'numlockx'                  # Turn NumLock on  - not working yet
        'kde-config-sddm'           # Login Screen (SDDM) System Settings Module
        'software-properties-qt'    # allows you to easily manage your distribution and independent software vendor software sources
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
apt modernize-sources
sudo apt update && sudo apt upgrade      #|| sudo pacman -Sy && sudo pacman -Syu

echo
echo "Base KDE Plasma instalation"
echo
read -p "Press Enter to start KDE installation............................>>>"
for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install "$PKG" #-y #|| sudo pacman -S "$PKG" --noconfirm --needed
    
    #Removing some packages
    sudo apt purge zutty kwalletmanager kdeconnect -y  #Debian || Arch

    #Turn NumLock on
    #add do .BAK_timestamp of sddm.conf
    sudo /bin/sh -c 'echo "Numlock=on" >> /etc/sddm.conf'
    
    #fastfetch auto load in terminal
    #add do .BAK_timestamp of .bashrc
    #sudo sed '1 s/^/fastfetch\n/' /home/.bashrc   #-does not work
done

#add check for install successful
echo
echo -e "${GREEN}Installation ran sucessfully!${NC}"
echo
timer_stop
#error check
read -p "$(echo -e $GREEN"Installation completed! Press Enter to reboot............................>>> "$NC)"

#Enable Network manager
     sudo systemctl enable NetworkManager
     sudo systemctl start NetworkManager
#Enable sddm so it get started on boot
    sudo systemctl enable sddm
#Boot    
#    sudo systemctl start sddm
reboot

    
    ### Jackblow33 2025 #####################



    
    
   
### TODO ###

# Battery & power profile auto setup for laptop and desktop
# Cleanup menu and add menu editor config file + remove kmenuedit from install script + up config file to github
# Automated option to remove or not screen brightnest applet | laptop vs desktop with command hostnamectl
# deactivate top left screen edge /overview set to no action  #https://github.com/shalva97/kde-configuration-files?tab=readme-ov-file#screen-edges
# add commands from postinstall document
# add error checking, press enter, reboot
# unpin konquerer from task bar | pin firefox Konsole   #https://github.com/shalva97/kde-configuration-files
# remove konsole exit confirmation
# set google as default home page in firefox
# install without emoji, konquerer, kedit - for now hidden from menu but still present...


