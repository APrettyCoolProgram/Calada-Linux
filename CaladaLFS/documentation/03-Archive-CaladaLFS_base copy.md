# Archive CaladaLFS_base

# Run caladalfs-00.sh

The `caladalfs-00.sh` script creates required CaladaLFS framework components.

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/caladalfs/scripts/caladalfs-00.sh`  
`$ chmod +x /caladalfs-00.sh`  
`$ .//caladalfs-00.sh`

# Run caladalfs-01.sh

The `caladalfs-01` cleans and optimizes the system.

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/caladalfs/scripts/caladalfs-01.sh`  
`$ chmod +x /caladalfs-01.sh`  
`$ .//caladalfs-01.sh`





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