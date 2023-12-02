# SPDX-License-Identifier: SPDX-GPL-3.0-or-later
# GPL 3.0 or later
#
# 1 December 2023 Tahomasoft
# bacon@tahomasoft.com Erik Beck

# This Makefile is for Rockchip RK3568 boards


include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

# uboot version 2023.10
# Package Name is uboot-rk3568

PKG_DISTNAME:=u-boot
PKG_VERSION:=2023.10
PKG_RELEASE:=0


PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:= \
	https://ftp.denx.de/pub/u-boot \
	https://mirror.cyberbits.eu/u-boot \
	ftp://ftp.denx.de/pub/u-boot
PKG_HASH:=e00e6c6f014e046101739d08d06f328811cebcf5ae101348f409cbbd55ce6900
PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk


define U-Boot/Default
	BUILD_TARGET:=rk356x
#	BUILD_SUBTARGET:=armv8
endef


# RK3566 Boards
define U-Boot/rk3566/Default
#	BUILD_SUBTARGET:=armv8
	BUILD_VARIANT:=rk3566
endef

# RK3568 Boards

define U-Boot/rk3568/Default
#	BUILD_SUBTARGET:=armv8
	BUILD_VARIANT:=rk3568
	DEPENDS:=+PACKAGE_u-boot-$(1):arm-trusted-firmware-rockchip-rkbin
endef

define U-Boot/linkstar-h68k-rk3568
	$(U-Boot/rk3568/Default)
	UBOOT_CONFIG:=linkstar-h68k-rk3568
	NAME:=LinkstarH68k
	BUILD_DEVICES:= \
		linkstar-h68k
	ATF_BL31:=rk3568_bl31_v1.43.elf
	ATF_BL32:=rk3568_bl32_v2.10.bin
	DDR:=rk3568_ddr_1560MHz_v1.18.bin
endef

define U-Boot/bananapi-r2pro-rk3568
	$(U-Boot/rk3568/Default)
	UBOOT_CONFIG:=banannaannaa
	NAME:=BananaPI-r2pro
	BUILD_DEVICES:= \
		banana-pi-r2pro
	ATF_BL31:=rk3568_bl31_v1.43.elf
	ATF_BL32:=rk3568_bl32_v2.10.bin
	DDR:=rk3568_ddr_1560MHz_v1.18.bin
endef

UBOOT_TARGETS := \
	linkstar-h68k-rk3568 \
	banana-pi-r2pro-rk3568

define Build/Download
	$(call Build/Download/Default)
endef

define Build/Prepare
	$(call Build/Prepare/Default)
endef

define Build/Configure
endef

define Build/Compile
	$(call Build/Compile/Default,$(UBOOT_CONFIG)_defconfig)
endef


define Build/InstallDev
endef

define Package/u-boot/install
endef


$(eval $(call BuildPackage/U-Boot))
