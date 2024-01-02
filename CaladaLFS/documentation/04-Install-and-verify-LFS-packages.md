# Install and verify LFS packages

# Run CaladaLFS-02.sh

The `CaladaLFS-02.sh` script installs packages required by LFS.

Type the following on the command line:

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-02.sh`  
`$ chmod +x /CaladaLFS-02.sh`  
`$ .//CaladaLFS-02.sh`

# Run CaladaLFS-03.sh

The `CaladaLFS-01` cleans and optimizes the system.

Type the following on the command line:

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-00.sh`  
`$ chmod +x /CaladaLFS-00.sh`  
`$ .//CaladaLFS-00.sh`





> Section `2.2.2. Software` of the LFS documentation lists the required packages, but this script will only install packages not included in the standard Debian 12 build.

- `$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/caladalfs/scripts/caladalfs-01.sh`
- `$ chmod +x /caladalfs-01.sh`
- `$ .//caladalfs-01.sh`

# Run `caladalfs-02.sh` 

The `caladalfs-02` verifies the LFS requirements.

- `$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/caladalfs/scripts/caladalfs-02.sh`
- `$ chmod +x /caladalfs-02.sh`
- `$ .//caladalfs-02.sh`


# Install optional packages

- `$ sudo apt-get install openssh-server screen`