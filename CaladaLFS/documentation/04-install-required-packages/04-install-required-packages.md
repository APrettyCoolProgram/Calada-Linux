# Install required packages

# Run CaladaLFS-02.sh

The `CaladaLFS-02.sh` script installs packages required by LFS[^1].

> Section `2.2.2. Software` of the LFS documentation lists the required packages, but this script will only install packages not included in the standard Debian 12 build.

Type the following on the command line:

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-02.sh`  
`$ chmod +x /CaladaLFS-02.sh`  
`$ ./CaladaLFS-02.sh`

# Verify all required packages are installed.

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-03.sh`  
`$ chmod +x /CaladaLFS-03.sh`  
`$ ./CaladaLFS-03.sh`

# Install optional packages

- `$ sudo apt-get install openssh-server screen`

<br>

***

[^1]: *Linux from Scratch - Version 12* (Pg. 12)