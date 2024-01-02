# Build the CaladaLFS base

Start the virtual machine, and login using `caladalfs/caladalfs`

# Run CaladaLFS-00.sh

The `CaladaLFS-00.sh` script creates required CaladaLFS framework components.

Type the following on the command line:

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-00.sh`  
`$ chmod +x /CaladaLFS-00.sh`  
`$ .//CaladaLFS-00.sh`

# Grant `caladalfs` user sudo access

Type the following on the command line:

`$ su`  
`$ sudo visudo`

Add `caladalfs ALL=(ALL) ALL` to the bottom of the file, and save it.

`ctrl-d` to return to `caladalfs` user

# Run CaladaLFS-01.sh

The `CaladaLFS-01.sh` script cleans and optimizes the system.

`$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/CaladaLFS/scripts/CaladaLFS-01.sh`  
`$ chmod +x /CaladaLFS-01.sh`  
`$ .//CaladaLFS-01.sh`

# Create the CaladaLFS_base archive

Defragment and compact the CaladaLFS virtual machine, then create a .7z archive.