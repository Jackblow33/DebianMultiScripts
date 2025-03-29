#!/bin/bash


#wifiinstall       - imac BCM4360 & +++
#From Google search = broadcom-wl-dkms   debian trixie how to install

sudo apt install linux-image-amd64 linux-headers-amd64 broadcom-sta-dkms wireless-tools

#
Unloading and reloading modules
sudo modprobe -r wl && sudo modprobe wl
