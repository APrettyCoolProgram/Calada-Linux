#!/bin/bash

#    PROJECT: dvn
#   FILENAME: dvn-development.sh
#      BUILD: 171103
#    AUTHORS: development@aprettycoolprogram.com
#  COPYRIGHT: 2017 A Pretty Cool Program
#    LICENSE: Apache License, Version 2.0 [http://www.apache.org/licenses/LICENSE-2.0]
#  MORE INFO: http://aprettycoolprogram.com/pie
#
# Version 0.90.0
#
# Builds a full dvn development environment in Ubuntu Linux.

# BEFORE YOU RUN THIS SCRIPT
#
#   * This script requires a 64-bit Ubuntu Linux install. This script has been tested with Ubuntu 17.10. If your
# 	  install is virtual, it is recommended that you install the guest tools for your virtualization software.
#
#   * You may want to remove the sudo password requirement, understanding that this is a security risk.
#
#       $ sudo visudo
#       Add "<username> ALL=(ALL) NOPASSWD: ALL" to the end of the file
#
#   * It is recommended that you add the Canonical Partners repository

## Install localepurge interactively, then update apt.
sudo apt install localepurge
sudo apt update

## Comment this out if you aren't building dvn in a VMWare Workstation/Player VM.
sudo apt install -y open-vm-tools

## Required packages
sudo apt install -y build-essential git curl apt-transport-https

## GUI
sudo apt install -y gnome-session xinit 

## Customization packages
sudo apt install -y gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell moka-icon-theme arc-theme
							
## Recommended packages
sudo apt install -y gnome-terminal openssh-server htop filezilla firefox

## Customize the GUI					
mkdir $HOME/.themes
mkdir $HOME/.icons
mkdir $HOME/Downloads
cd Downloads
git clone https://github.com/horst3180/arc-icon-theme
cd arc-icon-theme
sudo mv Arc /usr/share/icons	
cd

# Install Visual Studio Code					
wget -O $HOME/Downloads/code.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i $HOME/Downloads/code.deb
sudo apt-get -y install -f	

# Install recommended languages
sudo apt-get install -y default-jdk golang-go

## Install Node.js
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs --no-install-recommends

# Install CoffeeScript
sudo npm install coffee-script

## Cleanup
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo rm -rf $HOME/Downloads/*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
sudo e4defrag /
history -cw

# AFTER YOU RUN THIS SCRIPT
#
#   * You may want to add the GNOME Shell integration add-on to Firefox.
#
#   * You may want to enable tabs in gnome-terminal
#
#       $ sudo visudo
#       Add "<username> ALL=(ALL) NOPASSWD: ALL" to the end of the file
#
#   * It is recommended that you add the Canonical Partners repository
