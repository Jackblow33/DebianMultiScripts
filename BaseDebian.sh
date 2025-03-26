#!/usr/bin/env bash

#Link Debian-testing weekly build iso amd64
#https://cdimage.debian.org/cdimage/weekly-builds/amd64/iso-cd/debian-testing-amd64-netinst.iso

#echo $PATH
#cd /usr/local/bin
#git clone https://github.com/Jackblow33/DebianMultiScripts.git
#cd DebianMultiScripts
#chmod +x BaseDebian.sh
#./BaseDebian.sh

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
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install -S "$PKG"
done

echo
echo "Done!"
echo

    #Enable Network manager
    #sudo systemctl enable NetworkManager
    #sudo systemctl start NetworkManager
    #Enable sddm so it get started on boot
    #sudo systemctl enable sddm
    #sudo systemctl start sddm

    # Soon Bluetooth PKGS
#bluedevil
#bluetooth
