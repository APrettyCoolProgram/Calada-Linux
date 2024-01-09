# CaladaLFS

# Create an empty virtual machine

# Virtual machine specifications

- HDD: `50GB` (single file)
- Memory: `8GB`
- Processors: `4`
- Virtualize IOMMU: `checked`
- USB compatibility: `USB 3.1`
- Display: `Accelerate 3D graphics`

# Modify the .vmx file

Start the VM, and you will get a message about "mitigations".

Shut the virtual machine down, and add `ulm.disableMitigations="TRUE"`  to the end of the "CrispyBox.vmx" file

# Install Debian

Restart the virtual machine and choose the "Graphical install" option

Using the All default values except:

- Hostname: `caladalfs`
- Root password: `caladalfs`
- Username/password: `caladalfs/caladalfs`

Once the installation is complete, reboot the virtual machine.

# Grant `caladalfs` user sudo access

Restart the virtual machine, and login using `caladalfs/caladalfs`

- `$ su`
- `$ sudo visudo`
- Add `caladalfs ALL=(ALL) ALL` to the bottom of the file, and save it.
- `ctrl-d` to return to `caladalfs` user

# Run `caladalfs-00.sh` 

The `caladalfs-00` script cleans and optimizes the system.

- `$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Calada-Linux/main/caladalfs/scripts/caladalfs-00.sh`
- `$ chmod +x /caladalfs-00.sh`
- `$ .//caladalfs-00.sh`

# Run `caladalfs-01.sh` 

The `caladalfs-01` installs packages required by LFS.

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
