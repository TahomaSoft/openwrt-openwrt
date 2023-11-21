# SPDX-License-Identifier: SPDX-GPL-3.0-or-later
# GPL 3.0 or later
#
# 21 Nov 2023 tahomasoft
# bacon@tahomasoft.com Erik Beck

# This Makefile is for Rockchip RK3568 boards

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

# uboot version 2023.10

# Package name below commented out because download routine uses it
# As directory name to use for downloading the source from the internet
# despite use of PKG_DISTNAME below

#PKG_NAME:=uboot-rockchip-3568

PKG_DISTNAME:=u-boot
PKG_VERSION:=2023.10
PKG_RELEASE:=0

define Package/uboot-rockchip-3568
	SECTION:=boot
	CATEGORY:=Boot Loaders
	TITLE:=Package to build U-Boot for Rockchip-RK3568
	MAINTAINER:= Erik Beck bacon@tahomasoft.com
	LICENSE:=GPL-3.0 GPL-3.0+
endef

PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:= \
	https://ftp.denx.de/pub/u-boot \
	https://mirror.cyberbits.eu/u-boot \
	ftp://ftp.denx.de/pub/u-boot
PKG_HASH:=e00e6c6f014e046101739d08d06f328811cebcf5ae101348f409cbbd55ce6900
PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)

# PKG_BUILD_DEPENDS:=fstools
PKG_BUILD_DEPENDS:=arm-trusted-firmware-rockchip-rkbin fstools

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
	BUILD_TARGET:=rockchip
	BUILD_SUBTARGET:=armv8
	VARIANT:=rk3568
	UENV:=default
	HIDDEN:=0
	UBOOT_IMAGE:=u-boot.itb
endef

# UBOOT_IMAGE:=  ???


define U-Boot/linkstar-h68k-rk3568
	BUILD_TARGET:=rockchip
	BUILD_SUBTARGET:=armv8
	VARIANT:=rk3568
	NAME:=LinkstarH68k
	BUILD_DEVICES:= \
	linkstar-h68k
	DEPENDS:=+PACKAGE_u-boot-linkstar-h68k-rk3568:arm-trusted-firmware-rockchip-rkbin
	PKG_BUILD_DEPENDS:=arm-trusted-firmware-rockchip-rkbin
	ATF_BL31:=rk3568_bl31_v1.43.elf
	ATF_BL32:=rk3568_bl32_v2.10.bin
	DDR:=rk3568_ddr_1560MHz_v1.18.bin
endef

# stub for now

define U-Boot/bananapi-r2pro-rk3568
	BUILD_TARGET:=rockchip
	BUILD_SUBTARGET:=armv8
	VARIANT:=rk3568
	NAME:=BananaPI-r2pro
	BUILD_DEVICES:= \
		banana-pi-r2pro
	DEPENDS:=+PACKAGE_u-boot-linkstar-h68k-rk3568:arm-trusted-firmware-rockchip-rkbin
	PKG_BUILD_DEPENDS:=arm-trusted-firmware-rockchip-rkbin
# Placeholders
	ATF_BL31:=rk3568_bl31_v1.43.elf
	ATF_BL32:=rk3568_bl32_v2.10.bin
	DDR:=rk3568_ddr_1560MHz_v1.18.bin
endef

define Package/u-boot/default/description
	U-Boot for RK3568 Boards
endef


UBOOT_TARGETS := \
	linkstar-h68k-rk3568 \
	banana-pi-r2pro-rk3568

UBOOT_CONFIGURE_VARS += USE_PRIVATE_LIBGCC=yes

UBOOT_MAKE_FLAGS += \
	BL31=$(STAGING_DIR_IMAGE)/$(ATF_BL31)

define Build/Configure
	$(call Build/Configure/U-Boot)
	$(SED) 's/CONFIG_TOOLS_LIBCRYPTO=y/# CONFIG_TOOLS_LIBCRYPTO is not set/' $(PKG_BUILD_DIR)/.config
	$(SED) 's#CONFIG_MKIMAGE_DTC_PATH=.*#CONFIG_MKIMAGE_DTC_PATH="$(PKG_BUILD_DIR)/scripts/dtc/dtc"#g' $(PKG_BUILD_DIR)/.config
	echo 'CONFIG_IDENT_STRING=" OpenWrt"' >> $(PKG_BUILD_DIR)/.config
	$(CP) $(STAGING_DIR_IMAGE)/$(DDR) $(PKG_BUILD_DIR)/ram_init.bin
endef


# alt
# check this
# ifneq ($(DDR),)
#		$(CP) $(STAGING_DIR_IMAGE)/$(DDR) $(PKG_BUILD_DIR)/ram_init.bin
# endif
# endef

# Note from: https://opensource.rock-chips.com/wiki_Boot_option#What_is_idbloader
# need to do: cat spl/u-boot-spl.bin >> idbloader.img


define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(PKG_BUILD_DIR)/tools/mkimage -n rk3568 -T rksd -d \
		$(STAGING_DIR_IMAGE)/loaderimage --pack --uboot $(PKG_BUILD_DIR)/u-boot-dtb.bin $(PKG_BUILD_DIR)/uboot.img 0x200000
	$(CP) $(PKG_BUILD_DIR)/uboot.img $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-uboot.img
	$(CP) $(PKG_BUILD_DIR)/spl/u-boot-spl.bin $(PKG_BUILD_DIR)/idbloader.img
	$(CP) $(PKG_BUILD_DIR)/idbloader.img $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-idbloader.img
	$(CP) $(PKG_BUILD_DIR)/u-boot.itb $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-u-boot.itb
endef


define Package/u-boot/install/default
endef

# $(eval $(call BuildPackage,uboot-rockchip-3568))
$(eval $(call BuildPackage/U-Boot))




