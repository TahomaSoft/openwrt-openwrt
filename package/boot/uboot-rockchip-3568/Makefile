#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

# 26 Oct 2023 tahomasoft


include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

# PKG_VERSION:=2021.07
PKG_VERSION:= 1
# PKG_RELEASE:=5

PKG_RELEASE:=0

# PKG_HASH:=312b7eeae44581d1362c3a3f02c28d806647756c82ba8c72241c7cdbe68ba77e
PKG_HASH:=0


include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
	BUILD_TARGET:=rockchip-3568
#	DEPENDS:=+PACKAGE_u-boot-$(1):trusted-firmware-a-rk3568
	UENV:=default
	HIDDEN:=1
endef


# RK3568 boards

define U-Boot/rk3568/Default
  BUILD_SUBTARGET:=armv8
  DEPENDS:=+PACKAGE_u-boot-$(1):trusted-firmware-a-rk3568
  ATF:=rk3568_bl31.elf # fix this version info
  OF_PLATDATA:=$(1)
endef

define U-Boot/linkstar-h68k-rk3568
  $(U-Boot/rk3568/Default)
  NAME:=LinkstarH68k
  BUILD_DEVICES:= \
    seeed_linkstar-h68k
endef

UBOOT_TARGETS := \
	linkstar-h68k-rk3568

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
