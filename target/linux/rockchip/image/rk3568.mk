# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel
# Modified for Rk3568 rockchip family by Tahomasoft. 17 Sept 2023


# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.


KERNEL_LOADADDR := 0x03200000


define Device/linkstar_h68k
	DEVICE_VENDOR := Seeed
	SOC := rk3568
	DEVICE_MODEL := LinkstarH68k
	UBOOT_DEVICE_NAME := linkstar-h68k-rk3568
	IMAGE/sysupgrade.img.gz := boot-common | boot-script linkstar | linkstar-img | gzip | append-metadata
#	DEVICE_PACKAGES := kmod-ata-ahci-platform kmod-mt7921e kmod-r8125 kmod-usb-serial-cp210x wpad-openssl ethtool

# removing kmod-mt7921e for debugging purposes; takes a long time to compile this module
	DEVICE_PACKAGES := kmod-ata-ahci-platform  kmod-r8125 kmod-usb-serial-cp210x wpad-openssl ethtool
#	DEPENDS:=+foo-tacos
endef

TARGET_DEVICES += linkstar_h68k





