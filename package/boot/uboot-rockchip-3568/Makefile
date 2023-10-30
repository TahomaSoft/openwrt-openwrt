#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

# 26 Oct 2023 tahomasoft

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

#PKG_NAME:=uboot-rockchip-3568
# https://source.denx.de/u-boot/u-boot/-/commits/v2023.10?ref_type=tags
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
PKG_BUILD_DEPENDS:=fstools

# https://ftp.denx.de/pub/u-boot/u-boot-2023.10.tar.bz2
# sha256sum u-boot-2023.10.tar.bz2
# e00e6c6f014e046101739d08d06f328811cebcf5ae101348f409cbbd55ce6900  u-boot-2023.10.tar.bz2

# trini@konsulko.com
# Tom Rini

# Github hash is different than ftp:
# PKG_HASH:=4459ed60cb1e0562bc5b40405e2b4b9bbf766d57

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

# define U-Boot/rk3568
#	BUILD_TARGET:=rockchip
#	BUILD_SUBTARGET:=armv8
#	VARIANT:=rk3568
#	UENV:=default
#	HIDDEN:=0

# endef

# RK3568 boards

define U-Boot/rk3568/Default
	BUILD_SUBTARGET:=armv8
	VARIANT:=rk3568
# build platform 3568?
	DEPENDS:=<+>PACKAGE_u-boot-$(1):trusted-firmware-a-rk3568
#	DEPENDS:=rkbin trusted-firmware-a-rk3568
	ATF:=rk3568_bl31.elf # fix this version info
	OF_PLATDATA:=$(1)
endef

define U-Boot/linkstar-h68k-rk3568
	$(U-Boot/rk3568/Default)
	NAME:=LinkstarH68k
#DEPENDS:=+PACKAGE_u-boot-$(1):trusted-firmware-a-rk3568
	BUILD_DEVICES:= \
		linkstar-h68k
endef

# stub for now

define U-Boot/bananapi-r2pro-rk3568
	$(U-Boot/rk3568/Default)
	NAME:=BananaPI-r2pro
	BUILD_DEVICES:= \
		banana-pi-r2pro
endef

UBOOT_TARGETS := \
	linkstar-h68k \
	banana-pi-r2pro


UBOOT_CONFIGURE_VARS += USE_PRIVATE_LIBGCC=yes

UBOOT_MAKE_FLAGS += \
	BL31=$(STAGING_DIR_IMAGE)/$(ATF)

define Build/Configure
	$(call Build/Configure/U-Boot)

ifneq ($(OF_PLATDATA),)
	mkdir -p $(PKG_BUILD_DIR)/tpl/dts
	mkdir -p $(PKG_BUILD_DIR)/include/generated

	$(CP) $(PKG_BUILD_DIR)/of-platdata/$(OF_PLATDATA)/dt-plat.c $(PKG_BUILD_DIR)/tpl/dts/dt-plat.c
	$(CP) $(PKG_BUILD_DIR)/of-platdata/$(OF_PLATDATA)/dt-structs-gen.h $(PKG_BUILD_DIR)/include/generated/dt-structs-gen.h
	$(CP) $(PKG_BUILD_DIR)/of-platdata/$(OF_PLATDATA)/dt-decl.h $(PKG_BUILD_DIR)/include/generated/dt-decl.h
endif

	$(SED) 's#CONFIG_MKIMAGE_DTC_PATH=.*#CONFIG_MKIMAGE_DTC_PATH="$(PKG_BUILD_DIR)/scripts/dtc/dtc"#g' $(PKG_BUILD_DIR)/.config
endef

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/idbloader.img $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-idbloader.img
	$(CP) $(PKG_BUILD_DIR)/u-boot.itb $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-u-boot.itb
endef

define Package/u-boot/install/default
endef

$(eval $(call BuildPackage/U-Boot))

.PHONY: all
all: ; $(info $$var is [${var}])echo Hello world


