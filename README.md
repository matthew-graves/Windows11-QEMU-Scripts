# Windows11-QEMU-Scripts
Scripts to run Windows 11 in QEMU with TPM + UEFI on OpenSUSE

## buildvm.sh
Start VM with Windows 11 ISO, TPM, UEFI via OVMF (OpenSUSE, replace with other OVMF fd files on other OSes)

## startvm.sh
Start VM with TPM, UEFI, VFIO Passthrough for Hardware Debugging & Event Tracing

## vfio-bind.sh
Run with `sudo ./vfio-bind.sh 0000:00:1f.{0,3,4,5}` replace ID's with appropriate PCI Addresses

## starttpm.sh
Start Virtual TPM for use with Windows 11 VM
