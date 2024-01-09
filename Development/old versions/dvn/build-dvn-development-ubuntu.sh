#!/bin/bash

#   PROJECT: dvn
#  FILENAME: build-dvn-development-ubuntu.sh
#     BUILD: 171031
#   AUTHORS: development@aprettycoolprogram.com
# COPYRIGHT: 2017 A Pretty Cool Program
#   LICENSE: Apache License, Version 2.0 [http://www.apache.org/licenses/LICENSE-2.0]
# MORE INFO: http://aprettycoolprogram.com/dvn

# Version 0.90.0

# This script will build a full dvn-development environment in Ubuntu Linux.
# This has been tested using VMWare Player 14 and Ubuntu 17.10

# Prior to running this script:
#
#	1. Download a Ubuntu 17.10 ISO (https://www.ubuntu.com/download)
#	2. Create a blank VM, using the Virtualization software of your choice. For example:
#
#			CPU		2
#			RAM		8192MB
#		    HDD		60GB
# 			VRAM	1GB w/3D-acceleration
#
#	3. Install Ubuntu, and optionaly update/upgrade.
#
#	4. Add the user to the visudo file. This will make it so any sudo commands will not require a password, so use
#	   at your own risk.
#
#		$ sudo visudo (then add "<username> ALL=(ALL) NOPASSWD: ALL" to the end of the file)

sudo apt-get install localepurge
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install -y build-essential emacs vim htop filezilla pidgin curl apt-transport-https gnome-tweak-tool

# This should get v5.0.1. If you want a different version, modify this line.
wget -O $HOME/Downloads/Anaconda.sh https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash $HOME/Downloads/Anaconda.sh



sudo rm -rf $HOME/Downloads/*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
sudo e4defrag /
history -cw
sudo reboot

#	5. Once the virtual machine has restarted, take some time to customize the installation, for instance what is
# 	   displayed on the Start Bar, wallpapers, etc. When you are done, shutdown the machine.	
#
#	6. If you want to install Visual Studio Code, go to this website:
#
#		https://code.visualstudio.com/docs/setup/linux
#
#		And click on the first link, then follow the instructions.
#
#	7. Defrag/Compress the virtual machine using your virtualization software.
#
#	8. Optionally backup the virtual machine, in the event you want to start fresh.
#
#	9. Optionally run the "build-dvn-development-ubuntu-extras.sh" script.
#
#	Lastly, you'll want to configure any software, for example Filezilla, Pidgin, etc.