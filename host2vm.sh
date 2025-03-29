#!/bin/bash

#host2vm.sh

#############
#  Optional:#
#########################################################
# Enable C/P from host to vm.  Not necessary in Ubuntu ##
#########################################################
#https://medium.com/@max.kombarov/install-the-spice-guest-agent-tools-on-a-debian-based-system-in-vm-2bc66fc2d95b
####### install on x11 virtualize system only...???

sudo apt update
sudo apt install spice-vdagent
##Start the SPICE Agent Service
systemctl start spice-vdagent
##Start automatically at boot
###???sudo systemctl enable spice-vdagent
##Check the SPICE Agent Status
systemctl status spice-vdagentsudo
#OLD_sudo nano /usr/lib/systemd/user/plasma-core.target
#Add: spice-vdagent.service at the end of line: Wants=
read -p "ok"

