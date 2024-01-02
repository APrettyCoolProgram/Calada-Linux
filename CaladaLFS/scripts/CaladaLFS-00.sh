#!/bin/bash

## CaladaLFS-00.sh
## b240102.1526
## Create required CaladaLFS framework components, and optimize system

mkdir -p ~/.CaladaLFS/{Logs,Scripts,Temp}

sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
history -c
sudo shutdown -h now

rm CaladaLFS-00.sh