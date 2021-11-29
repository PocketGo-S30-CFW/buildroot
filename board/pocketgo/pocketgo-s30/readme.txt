PocketGo-S30

Intro
=====

This board is based on Allwinner A33 SoC.

Home Page: https://pocket-go.com/products/pocketgo-s30
Wiki: 	   https://pocketgo-s30-cfw.github.io

How to build it
===============

Configure Buildroot:

    $ make pocketgo_s30_defconfig

Build everything by running:

    $ make

Result of the build
-------------------

After building, you should get a tree like this:

output/images/
├── boot.scr
├── rootfs.ext2
├── rootfs.ext4 -> rootfs.ext2
├── rootfs.tar
├── sdcard.img
├── sun8i-a33-pocketgo-s30.dtb
├── u-boot.bin
├── u-boot-sunxi-with-spl.bin
└── zImage


How to write the SD card
========================

The sdcard.img file is a complete bootable image ready to be written
on the boot medium. To install it, simply copy the image to a uSD
card:

    # dd if=output/images/sdcard.img of=/dev/sdX

Where 'sdX' is the device node of the uSD.

Eject the SD card, insert it in the PocketGo-S30 handheld, and power it up.
