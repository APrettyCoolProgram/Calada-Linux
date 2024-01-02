#!/bin/bash

## CaladaLFS-02.sh
## b240102.1526
## Installs required CaladaLFS packages.

sudo apt-get -y install build-essential bison gawk texinfo

wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-03.sh`  
chmod +x /CaladaLFS-03.sh`  
./CaladaLFS-03.sh`

rm CaladaLFS-02.sh
rm CaladaLFS-03.sh