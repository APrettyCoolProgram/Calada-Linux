#!/bin/bash

## CaladaLFS-01.sh
## b231214.1829
## Cleans and optimizes the system.

mv ~/CaladaLFS-01.sh ~/.CaladaLFS/Scripts/

sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
rm .bash_history
touch .bash_history
history -c