# 01 Create an empty virtual machine

CaladaBase is built in a VMWare virtual machine.

## Virtual machine specifications

- HDD: `30GB` (single file)
- Memory: `4GB`
- Processors: `2`
- Virtualize IOMMU: `checked`
- USB compatibility: `USB 3.1`
<!--
- Display: `Accelerate 3D graphics`
-->
- CDROM: `<path-to-Debian-ISO>`

## Modify the .vmx file

The first time you start the CaladaLFS virtual machine, you may get the following message:

![mitigation-message-01.jpg](imgres/mitigation-message-01.jpg)

To avoid this in the future:

1. Click `OK`
1. Shutdown the virtual machine
2. Add `ulm.disableMitigations="TRUE"` to the end of the "CrispyBox.vmx" file
