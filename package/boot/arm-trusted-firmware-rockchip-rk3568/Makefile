# Test makefile
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# Copyright 2023 TahomaSoft.com
# Revised for RK3568 from
# rockchip ATF Version by Tobias Maedel
#
# Copyright (C) 2020 Tobias Maedel <openwrt@tbspace.de>
# 

# trusted-firmware-a-rk3568


include $(TOPDIR)/rules.mk

#PKG_BUILD_DEPENDS:=glib2/host meson/host .... for rockchip rkbin

PKG_NAME:=atm-tfa-rk3568


#PKG_NAME:=uboot-rockchip-3568
# https://source.denx.de/u-boot/u-boot/-/commits/v2023.10?ref_type=tags
# PKG_DISTNAME:=u-boot
PKG_VERSION:=lts-v2.8.10
PKG_RELEASE:=0
PKG_SOURCE_DATE:=2023-10-26

# PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/ARM-software/arm-trusted-firmware.git
PKG_SOURCE_VERSION:=b2dc24a412933340cd93f9dcbfc5c559db4048b3
PKG_HASH:=42fecc27207ee39d5228e083a5cf4285fca92ff9dd37fb9e917834a20f579f23
PKG_MIRROR_HASH:=42fecc27207ee39d5228e083a5cf4285fca92ff9dd37fb9e917834a20f579f23

# PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
#PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)
# PKG_BUILD_DEPENDS:=fstools
PKG_SOURCE_PROTO:=git

# Tag on github: "lts-v2.8.10"

PKG_MAINTAINER:=Erik Beck <bacon@tahomasoft.com>

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/trusted-firmware-a.mk
include $(INCLUDE_DIR)/package.mk

define Trusted-Firmware-A/Default
	NAME:=Rockchip RK-3568 SoCs
	BUILD_TARGET:=rockchip
endef

define Trusted-Firmware-A/rk3568
	BUILD_SUBTARGET:=armv8
	PLAT:=rk3568
#	DEFAULT:=y
	NAME:=Rockchip RK3568 SoCs
	BUILD_TARGET:=rockchip
endef


#define Package/trusted-firmware-a-rk3568
#	SECTION:=boot
#	CATEGORY:=Boot Loaders
#	TITLE:= ARM Trusted Firmware A for Rockchip-RK3568
#	MENU:=1
#endef

#define Trusted-Firmware-A/Default
#  NAME:=Rockchip $(1) SoCs rk3568
#  BUILD_TARGET:=rockchip
# endef

#define Trusted-Firmware-A/description
#	An evolving branch for RK3568 chips
#endef

# define Trusted-Firmware-A/rk3568
#   BUILD_SUBTARGET:=rk3568
#   PLAT:=rk3568 #linkstar instead here?
#endef

#define Package/trusted-firmware-a-rk3568/description
#	Evolving package trusted firmware a for rk3568
#endef

TFA_TARGETS:= \
	rk3568

#define Build/Prepare
#	echo "Build/Prepare"
#	$(info $$INSTALL_DIR is [${var}])
#	$(foreach var,$(.VARIABLES),$(info $(var) = $($(var))))
#	$(call Build/Prepare/Default)
#endef


#define Package/trusted-firmware-a/install
#	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
#	$(info $$INSTALL_DIR is [${var}])
#	$(foreach var,$(.VARIABLES),$(info $(var) = $($(var))))
#	$(INSTALL_DATA) $(PKG_BUILD_DIR)/build/$(PLAT)/release/bl31/bl31.elf $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)_bl31.elf
#endef


$(eval $(call BuildPackage/Trusted-Firmware-A))



