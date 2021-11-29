setenv bootargs earlyprintk=serial,ttyS1,115200 loglevel=7 init=/sbin/init rootwait root=/dev/mmcblk0p1 console=ttyS0,115200 earlycon=ttyS1,115200 ${extra}
ext4load mmc 0 ${fdt_addr_r} /boot/${fdtfile}
ext4load mmc 0 ${kernel_addr_r} /boot/zImage
env set fdt_high ffffffff
bootz ${kernel_addr_r} - ${fdt_addr_r}

