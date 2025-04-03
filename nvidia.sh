#For Debian Trixie

#Source https://wiki.debian.org/NvidiaGraphicsDrivers

#GPU Identification
lspci -nn | egrep -i "3d|display|vga"

#Add contrib non-free & non-free-firmware components to /etc/apt/sources.list

#detect gpu and suggest drivers
sudo apt install nvidia detect

#If your system uses dracut
#Make a dracut configuration file /etc/dracut.conf.d/10-nvidia.conf with this
#install_items+=" /etc/modprobe.d/nvidia-blacklists-nouveau.conf /etc/modprobe.d/nvidia.conf /etc/modprobe.d/nvidia-options.conf "
