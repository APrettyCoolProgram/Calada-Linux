#!/bin/bash

#   PROJECT: dvn
#  FILENAME: build-dvn-development-ubuntu-standalone.sh
#     BUILD: 171031
#   AUTHORS: development@aprettycoolprogram.com
# COPYRIGHT: 2017 A Pretty Cool Program
#   LICENSE: Apache License, Version 2.0 [http://www.apache.org/licenses/LICENSE-2.0]
# MORE INFO: http://aprettycoolprogram.com/dvn

# Version 0.90.0

# This script will add some stand alone stuff to the standard dvn-development.

# Prior to running this script:
#
#	1. Run the "build-dvn-development-ubuntu.sh" script
#
#	2. Optionally run the "build-dvn-development-ubuntu-extras.sh" script

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install -y dropbox

sudo rm -rf $HOME/Downloads/*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
sudo e4defrag /
history -cw
sudo reboot

#	3. Shutdown the machine.	
#
#	4. Defrag/Compress the virtual machine using your virtualization software.
#
#	5. Optionally backup the virtual machine, in the event you want to start fresh.