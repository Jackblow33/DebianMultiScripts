#!/bin/bash

#https://wiki.debian.org/Gnome


sudo apt update && sudo apt upgrade
sudo apt install gnome-core  #or gnome-base    https://www.youtube.com/watch?v=zy-5UHC3t-Q
sudo apt purge ifupdown
#sudo shutdown -r now #reboot
sudo sed -i "s/managed=false/managed=true/" /etc/NetworkManager/NetworkManager.conf
echo "#########################################################"
echo "# Editing NetworkManager: managed=false to managed=true #"
echo "#########################################################"
read -p "Press Enter to edit"
sudo nano /etc/NetworkManager/NetworkManager.conf
#Check system|network|IPv4 and make sure static ip address or dhcp is set properly
sudo apt install gedit make gettext sassc -y         #build dependencies included for compiling dash-to-dock
sudo apt purge gnome-text-editor -y && sudo apt autoremove gnome-text-editor -y
echo "Press [enter] to reboot"; read enterKey
sudo shutdown -r now      #reboot

#Install and setup gnome extensions
#sudo apt install gnome-shell-extension-dash-to-panel
#gnome-extensions enable dash-to-dock@micxgx.gmail.com
#gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
#gsettings set org.gnome.shell.extensions.dash-to-dock pinned-apps "['org.gnome.help']"

###To disable "intellihide" (a specific type of auto-hide), use:
#gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

###To make the dock fixed (not movable), use: 
#gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false.

#Alternate method https://askubuntu.com/questions/1204214/use-gnome-dash-to-dock-without-autohide








###To install the "Ubuntu Dock" (formerly Dash to Dock) extension on Debian
    #git clone https://github.com/micheleg/dash-to-dock.git -b ubuntu-dock
    #cd dash-to-dock          #Change into the newly cloned directory
    #make && make install     #Run the following commands to build the extension

### Enable the Extension:
#gnome extensions enable ubuntu-dock@ubuntu.com     #sudo su ???

    #You also can now enable the extension using the gnome-tweaks tool:
        #Open the gnome-tweaks tool (if you don't have it installed, install it with sudo apt install gnome-tweaks).
        #Go to the "Extensions" section.
        #Find "Ubuntu Dock" (or "dash-to-dock") in the list and enable it.

 
### Alternative (Manual Installation):

    #You can also manually install the extension by extracting the zip archive from the release page into the ~/.local/share/gnome-shell/extensions/ directory.
        #The directory for the extension should be named ubuntu-dock@ubuntu.com.
        #Then, reload the shell as described above and enable the extension through gnome-tweaks. 












#git clone https://github.com/micheleg/dash-to-dock.git   #https://github.com/micheleg/dash-to-dock
#make -C dash-to-dock install

###I#nstall gnome browser evtensions first: https://extensions.gnome.org/ OR better next
#Already installed??? sudo apt install gnome-shell-extension-prefs        #gnome-shell-extension-manager
#Already installes??? sudo apt-get install gnome-browser-connector
###Add dash to dock: https://extensions.gnome.org/extension/307/dash-to-dock/
######  cd /home/$USER/Downloads
#wget https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip
#####   sudo mkdir /home/$USER/.local/share/gnome-shell//extensions
#unzip dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip \ -d ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com      #/
#gnome-extensions enable dash-to-dock@micxgx.gmail.com
#gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
#gsettings set org.gnome.shell.extensions.dash-to-dock pinned-apps "['org.gnome.help']"
###Log out & login. That's it
#echo "Press [enter] to reboot"; read enterKey
#sudo shutdown -r now #reboot
###READ https://micheleg.github.io/dash-to-dock/download.html

#New examples
gnome-extensions enable dash-to-dock@micxgx.gmail.com
#gnome-extensions disable dash-to-dock@micxgx.gmail.com     #Disables the extension
#gnome-extensions list                                      #Lists all installed extensions
#gnome-extensions info dash-to-dock@micxgx.gmail.com        #Displays information about the extension
#gnome-extensions uninstall dash-to-dock@micxgx.gmail.com   #Uninstalls the extension


#To toggle autohide, you could use a script like this:

        #!/bin/bash

        # Get current autohide setting
        #current_setting=$(gsettings get org.gnome.shell.extensions.dash-to-dock autohide)

        # Toggle autohide based on current setting
        #if [[ "$current_setting" == "true" ]]; then
            gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
            echo "Autohide disabled"
        #else
            gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
            echo "Autohide enabled"
        #fi

#Automating with gsettings:

#Setting Dock Position: You can change the dock's position (left, right, bottom) using gsettings. 

        #gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "bottom"
        


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
