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

#PKG_SOURCE_URL:=https://api.github.com/repos/rockchip-linux/rkbin/tarball/master
#PKG_SOURCE_URL:=https://github.com/ForkFandango/rockchip-rkbin/archive/refs/tags/V0.0.1.tar.gz

PKG_SOURCE_DATE:=2023-07-25
PKG_MAINTAINER:=Rockchip Kever Yang <kever.yang@rock-chips.com>
# PKG_INSTALL:=1
PKG_DISTNAME:=rockchip-linux-rkbin

PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)


PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_HASH_SHORT).tar.gz

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/rkbin
	SECTION:=boot
	CATEGORY:=Boot Loaders
	TITLE:= Rockchip rkbin tools
	MENU:=1
endef


define Package/rkbin/description
	Retrieve and unpack rkbin in prep for u-boot and ARM Trusted Firmware for u-boot
endef

define Build/Configure
	$(call Build/Compile/Default,rkbin)
endef

define Build/Compile
	$(call Build/Compile/Default,rkbin)
endef

$(eval $(call BuildPackage,rkbin))


