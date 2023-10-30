# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Erik H. Beck bacon@tahomasoft.com

include $(TOPDIR)/rules.mk

BOARDNAME:=RK3568 boards (64 bit)
CPU_TYPE:=armv8
CPU_SUBTYPE:=rk3568


define Target/Description
	Build firmware image for Rockchip RK35368 devices.
	This firmware features a 64 bit kernel.
endef
