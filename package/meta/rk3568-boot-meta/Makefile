# Open Source GPL
# bacon@tahomasoft.com


include $(TOPDIR)/rules.mk
PKG_NAME:=rk3568-boot-meta
PKG_BUILD_DEPENDS:=uboot-rockchip-3568 arm-trusted-firmware-rockchip-rkbin
PKG_VERSION:=0
include $(INCLUDE_DIR)/package.mk


define Package/rk3568-boot-meta
 SECTION:=meta
 CATEGORY:=Image Helpers
 TITLE:= Meta package to build firmware for Rockchip-RK3568
endef

define Package/rk3568-boot-meta/description
 Meta package to acquire bin-blobs and build files needed to put
 together the Rockship rk3568 image (arm trusted firmware, uboot, etc)
endef

define Build/Prepare
$(call Build/Prepare/Default)
endef

define Build/install
 $(call Build/Install/Default)
endef

$(eval $(call BuildPackage,rk3568-boot-meta))

#

