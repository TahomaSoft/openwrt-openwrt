# What's Needed #

To build the u-boot firmware for RK3568-based Seeed Studios Linkstar
H68k, we need the following binary files from Rockchip's rkbin tree
installed where other stages can find them (from ./bin/rk35):

## Definitely ##
* rk3568_bl31_v1.43.elf
* rk3568_ddr_1560MHz_v1.18.bin

## Probably: ##

* rk3568_bl32_v2.10.bin


## Maybe: ##

* rk356x_spl_nand_v1.14.bin
* rk356x_usbplug_nand_v1.04.bin
* rk356x_spl_v1.12.bin
* rk356x_usbplug_v1.17.bin

## Unlikely but possible: ##

* rk3568_miniloader_spinand_v1.15.bin
* rk3568_ramboot_null0.bin
* rk3568_ramboot_null1.bin
* rk3568_ramboot_v1.08.bin

