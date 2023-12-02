# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Erik H. Beck bacon@tahomasoft.com

include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARDNAME:=RK356x boards (64 bit)
CPU_TYPE:=armv8
CPU_SUBTYPE:=rk356x


define Target/Description
	Build firmware image for Rockchip RK3536x devices.
	This firmware features a 64 bit kernel.
endef
