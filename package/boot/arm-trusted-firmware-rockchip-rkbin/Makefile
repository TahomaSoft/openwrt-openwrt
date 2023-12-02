# Copyright 2023 TahomaSoft.com
# GPL 2.0
# A host package


include $(TOPDIR)/rules.mk

PKG_NAME:=arm-trusted-firmware-rockchip-rkbin
PKG_VERSION:=V0.0.1
PKG_RELEASE:=1
PKG_HASH:=b4558da0860ca48bf1a571dd33ccba580b9abe23
PKG_HASH_SHORT:=b4558da
PKG_SOURCE_PROTO:=git
#PKG_SOURCE_VERSION:=b4558da
PKG_SOURCE_VERSION:=b4558da0860ca48bf1a571dd33ccba580b9abe23
PKG_SOURCE_URL:=https://github.com/rockchip-linux/rkbin.git


# Example:
#https://github.com/openwrt/packages/blob/ffdbc7a637df8e3f39dd6916405f78840edccfb4/fonts/dejavu-fonts-ttf/Makefile

#PKG_SOURCE_URL:=https://api.github.com/repos/rockchip-linux/rkbin/tarball/master
#PKG_SOURCE_URL:=https://github.com/ForkFandango/rockchip-rkbin/archive/refs/tags/V0.0.1.tar.gz



PKG_SOURCE_DATE:=2023-07-25
PKG_MAINTAINER:=Rockchip Kever Yang <kever.yang@rock-chips.com>
PKG_DISTNAME:=rockchip-linux-rkbin

#PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)

PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_HASH_SHORT).tar.gz

# /home/erikbeck/SecondTry-OpenWRT/openwrt-openwrt/build_dir/hostpkg/rockchip-linux-rkbin-V0.0.1




include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/trusted-firmware-a.mk

# Unpack source thusly:
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

FILES:= \
	rk3568_bl31_v1.43.elf \
	rk3568_ddr_1560MHz_v1.18.bin \
	rk3568_bl32_v2.10.bin \
	loaderimage \
	rk3568_miniloader_spinand_v1.15.bin




# $(foreach file, $(FILES),$(eval $(call FileCopy, $(file))))

define Package/arm-trusted-firmware-rockchip-rkbin
	SECTION:=Administration
	CATEGORY:=Boot Loaders
	TITLE:= Rockchip rkbin tools
	TYPE:=bool
endef

#define Build/Prepare
#	$(call Build/Prepare/Default)
#endef

#define Build/Configure
#	$(call Build/Prepare/Default)
#endef

define Build/Compile
	$(call Build/Compile/Default)
#	$(CP) $(PKG_BUILD_DIR)/bin/rk35/rk3568_bl31_v1.43.elf $(STAGING_DIR_IMAGE)
endef

define Build/InstallDev
	mkdir -p $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/bin/rk35/rk3568_bl31_v1.43.elf $(STAGING_DIR_IMAGE)/
	$(CP) $(PKG_BUILD_DIR)/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin $(STAGING_DIR_IMAGE)/
	$(CP) $(PKG_BUILD_DIR)/bin/rk35/rk3568_bl32_v2.10.bin $(STAGING_DIR_IMAGE)/
	$(CP) $(PKG_BUILD_DIR)/bin/rk35/rk3568_miniloader_spinand_v1.15.bin $(STAGING_DIR_IMAGE)/
#	$(CP) $(PKG_BUILD_DIR)/tools/loaderimage $(STAGING_DIR_IMAGE)/
endef

# define FileCopy
# define Package/rkbin-files-$(1)
# $(call Package/rkbin-files/Default)
#  TITLE:=$(1)
# endef
# endef

# define FileInstall
# define Package/rkbin-files-$(1)/install
#	$(INSTALL_DIR) \
#	  $(STAGING_DIR_IMAGE)
#
#	$(INSTALL_DATA) \
#		$(PKG_BUILD_DIR)/bin/rk35/$(1) \
#		$(INSTALL_DIR)
# endef
# endef


define Package/rkbin/description
	Retrieve and unpack rkbin in prep for u-boot and ARM Trusted
	Firmware for u-boot
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,arm-trusted-firmware-rockchip-rkbin))











