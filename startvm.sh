./starttpm.sh  &> /dev/null &
qemu-system-x86_64 -enable-kvm -hda virtual-machine.img -cdrom Win11_English_x64v1.iso -m 8G -smp 4 \
  -chardev socket,id=chrtpm,path=/tmp/mytpm1/swtpm-sock \
  -tpmdev emulator,id=tpm0,chardev=chrtpm \
  -usbdevice tablet \
  -device tpm-tis,tpmdev=tpm0 -bios /usr/share/qemu/ovmf-x86_64-ms-4m.bin -machine type=q35 \
  -device vfio-pci,host=0000:00:1f.3,x-no-mmap=true -trace events=~/scripts/events.txt -monitor stdio \