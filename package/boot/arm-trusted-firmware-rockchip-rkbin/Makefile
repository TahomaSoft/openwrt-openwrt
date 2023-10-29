# Copyright 2023 TahomaSoft.com
# GPL 2.0

include $(TOPDIR)/rules.mk

PKG_NAME:=rkbin
PKG_VERSION:=0.0.0
PKG_RELEASE:=1
PKG_HASH:=b4558da0860ca48bf1a571dd33ccba580b9abe23
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/rockchip-linux/rkbin.git
PKG_SOURCE_DATE:=2023-07-25
PKG_MAINTAINER:=Rockchip Kever Yang <kever.yang@rock-chips.com>
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
 

define Package/rkbin
	SECTION:=boot
	CATEGORY:=Boot Loaders
	TITLE:= Rockchip rkbin tools
	MENU:=1
endef


define Package/rkbin/description
	Retrieve and unpack rkbin in prep for u-boot and ARM Trusted Firmware for u-boot
endef


$(eval $(call BuildPackage,rkbin))


