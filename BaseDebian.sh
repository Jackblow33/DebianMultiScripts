#!/bin/bash
#
#
#Option 2 x11&Wayland (HDD_3.63GB Ram_1.05GB 1313_PKG)
#
sudo apt install kde-plasma-desktop firefox-esr plasma-discover plasma-pa plasma-nm kmenuedit fastfetch
#bluetooth  bluedevil
#Enable Network manager
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
#Enable sddm so it get started on boot
sudo systemctl enable sddm
sudo systemctl start sddm
#
#
#To access a USB device within a KVM virtual machine
# 1st Click VirtualMachine/Redirect USB device
#
#  lsusb
#Identify the device: Look for the specific USB device you want topass to the VM. Note the bus and device numbers (e.g., Bus 002 Device 002).
#
#  -device usb-host,hostbus=<002>,hostaddr=<002>
#      qemu-system-x86_64 -m 2G -smp 2 -cdrom /path/to/iso.iso -device usb-host,hostbus=2,hostaddr=3 ...
