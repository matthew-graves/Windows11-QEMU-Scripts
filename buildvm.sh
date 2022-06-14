qemu-system-x86_64 -enable-kvm -hda virtual-machine.img -cdrom Win11_English_x64v1.iso -m 4G -smp 4 \
  -chardev socket,id=chrtpm,path=/tmp/mytpm1/swtpm-sock \
  -tpmdev emulator,id=tpm0,chardev=chrtpm \
  -device tpm-tis,tpmdev=tpm0 -bios /usr/share/qemu/ovmf-x86_64-ms-4m.bin -machine type=q35,accel=kvm
