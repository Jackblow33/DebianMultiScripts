#!/bin/bash


#wifiinstall       - imac BCM4360 & +++
#From Google search = broadcom-wl-dkms   debian trixie how to install

cd /home/jack/Downloads
sudo wget http://http.us.debian.org/debian/pool/non-free/b/broadcom-sta/broadcom-sta-dkms_6.30.223.271-26_amd64.deb
sudo apt install linux-image-amd64 linux-headers-amd64 wireless-tools #broadcom-sta-dkms

#
Unloading and reloading modules
sudo modprobe -r wl && sudo modprobe wl
