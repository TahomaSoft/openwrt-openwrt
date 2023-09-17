# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

define Device/linkstar_h68k
  DEVICE_VENDOR := Seeed
  SOC := rk3568
  DEVICE_MODEL := linkstar_h68k
  UBOOT_DEVICE_NAME := linkstar_h68k
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r5s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-ata-ahci-platform kmod-mt7921e kmod-r8125 kmod-usb-serial-cp210x wpad-openssl ethtool
endef

TARGET_DEVICES += linkstar_h68k





