# 01 Create an empty virtual machine

CaladaLFS is built in a VMWare virtual machine.

## Virtual machine specifications

- HDD: `50GB` (single file)
- Memory: `8GB`
- Processors: `4`
- Virtualize IOMMU: `checked`
- USB compatibility: `USB 3.1`
- Display: `Accelerate 3D graphics`
- CDROM: `<path-to-Debian-ISO>`

## Modify the .vmx file

The first time you start the CaladaLFS virtual machine, you may get the following message:

[IMG]

To avoid this in the future:

1. Shutdown the virtual machine
2. Add `ulm.disableMitigations="TRUE"` to the end of the "CrispyBox.vmx" file
