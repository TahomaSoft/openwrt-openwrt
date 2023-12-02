# SPDX-License-Identifier: GPL-2.0-only
#
# Modified for Rk3568 rockchip family by Tahomasoft. 17 Sept 2023
# Restart november 2023


define Device/linkstar_h68k
	DEVICE_VENDOR:= Seeed
	SOC:= rk3568
	DEVICE_MODEL:= LinkstarH68k
	UBOOT_DEVICE_NAME:= linkstar-h68k-rk3568
	IMAGE/sysupgrade.img.gz := boot-common | boot-script linkstar | rk3568-img | gzip | append-metadata
endef

TARGET_DEVICES += linkstar_h68k





