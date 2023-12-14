# Build galdurlfs

## Create the virtual machine

- HDD: `50GB` (single file)
- Memory: `8GB`
- Processors: `4`
- Virtualize IOMMU: `checked`
- USB compatibility: `USB 3.1`
- Display: `Accelerate 3D graphics`

## Modify the .vmx file

Start the VM, and you will get a message about "mitigations".

Shut the virtual machine down, and add `ulm.disableMitigations="TRUE"`  to the end of the "CrispyBox.vmx" file

## Graphical install

Restart the virtual machine and choose the "Graphical install" option

Using the All default values except:

- Hostname: `galdurlsf`
- Root password: `galdurlsf`
- Username/password: `galdurlsf/galdurlsf`

Once the installation is complete, reboot the virtual machine.

### Grant `galdurlsf` user sudo access

Restart the virtual machine, and login using `galdurlsf/galdurlsf`

- `$ su`
- `$ sudo visudo`
- Add `galdurlsf ALL=(ALL) ALL` to the bottom of the file, and save it.
- `ctrl-d` to return to `galdurlsf` user

## Cleanup the base install

- `$ sudo e4defrag /`
- `$ cat /dev/zero > ~/zero.zero`
- `$ rm zero.zero`
- `$ rm .bash_history`
- `$ touch .bash_history`
- `$ history -c`

### Install LFS required packages

Sextion `2.2.2. Software` of the LFS documentation lists the required packages, but the default install of Debian 12 only requires these:

- `$ sudo apt-get install build-essential bison gawk texinfo`

### Run version-check.sh

Verify all of the LFS requirements:

- `$ wget https://raw.githubusercontent.com/APrettyCoolProgram/Galdur/main/galdurlfs/scripts/lfs-requirements-check.sh`
- `$ chmod +x lfs-requirements-check.sh`
- `$ ./lfs-requirements-check.sh`

## Install optional packages

- `$ sudo apt-get install openssh-server screen`
