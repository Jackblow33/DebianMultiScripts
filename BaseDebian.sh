#!/bin/bash

#Link Debian-testing weekly build iso amd64
#https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-cd/debian-testing-amd64-netinst.iso

#cd /usr/local/bin
#git clone https://github.com/Jackblow33/DebianMultiScripts.git
#cd DebianMultiScripts
#chmod +x BaseDebian.sh
#sudo chmod +x BaseDebian,sh
#./BaseDebian.sh
#https://www.youtube.com/watch?v=G7vMhsTUzWI Edit - git status -git add . (. = all files changed or use name of file changed)

echo
echo "Base KDE Plasma installing"
echo

PKGS=(
        'kde-plasma-desktop'
        'plasma-discover'
        'plasma-pa'
        'plasma-nm'
        'kmenuedit'
        'firefox-esr'
        'fastfetch'

# Soon Bluetooth PKGS
#bluedevil
#bluetooth


        )

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install -S "$PKG"
    #Enable Network manager
    sudo systemctl enable NetworkManager
    sudo systemctl start NetworkManager
    #Enable sddm so it get started on boot
    sudo systemctl enable sddm
    sudo systemctl start sddm


    done


echo
echo "Done!"
echo
