#!/bin/bash

## CaladaLFS-00.sh
## b240102.1526
## Setup required CaladaLFS framework components.

mkdir -p ~/.CaladaLFS/{Logs,Scripts,Temp}

sudo apt-get install build-essential bison gawk texinfo

sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
history -c
sudo shutdown -h now