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

mkdir $HOME/Shares
sudo mount -t vmhgfs .host:/ $HOME/Shares