#!/bin/bash

#   PROJECT: dvn
#  FILENAME: build-dvn-development-ubuntu-extras.sh
#     BUILD: 171031
#   AUTHORS: development@aprettycoolprogram.com
# COPYRIGHT: 2017 A Pretty Cool Program
#   LICENSE: Apache License, Version 2.0 [http://www.apache.org/licenses/LICENSE-2.0]
# MORE INFO: http://aprettycoolprogram.com/dvn

# Version 0.90.0

# This script will add some additional stuff to the standard dvn-development build.

# Prior to running this script:
#
#	1. Run the "build-dvn-development-ubuntu.sh" script

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install -y default-jdk openssh-server ubuntu-unrestricted extras

sudo rm -rf $HOME/Downloads/*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
sudo e4defrag /
history -cw
sudo reboot

#	2. Shutdown the machine.	
#
#	3. Defrag/Compress the virtual machine using your virtualization software.
#
#	4. Optionally backup the virtual machine, in the event you want to start fresh.