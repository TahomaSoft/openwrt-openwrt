# Copyright 2023 TahomaSoft.com
# GPL 2.0
# A host package


include $(TOPDIR)/rules.mk

PKG_NAME:=rkbin
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

# Unpack source thusly:

# PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk


define Package/rkbin
	SECTION:=meta
	CATEGORY:=Image Helpers
	TITLE:= Rockchip rkbin tools
endef

#define Build/Prepare
#	$(call Build/Prepare/Default)
#endef

#define Build/Configure
#	$(call Build/Prepare/Default)
#endef

define Build/Compile
#	$(call Build/Prepare/Default)
	$(call Build/Compile/Default)
endef



#define Build/Install
#	true
#endef


define Package/rkbin/description
	Retrieve and unpack rkbin in prep for u-boot and ARM Trusted
	Firmware for u-boot
endef

$(eval $(call HostBuild))

$(eval $(call BuildPackage,rkbin))










