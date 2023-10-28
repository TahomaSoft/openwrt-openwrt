# Readme/Overview for building RK3568 ARM Trusted Firmware #
* bacon@tahoma.com
* October 28, 2023


## Summary ##

Unlike SoC ARM chipsets from other manufacturers and also unlike
Rockchip's own procedure with RK33XX chips, source files for building
ARM Trusted Firmware (ATF) for RK3568 chips are not available.

However, Rockchip does make binary files for builing ATF and U-Boot
loaders available (https://github.com/rockchip-linux/rkbin.git).

The version currently of interest is dated July 25, 2023 and has a
patch hash of b4458da.  Rockchip added a permissive license at that
time to this repository.

In short:

* https://github.com/rockchip-linux/rkbin.git
* https://github.com/rockchip-linux/tarball/rkbin.git
* curl -L https://api.github.com/repos/rockchip-linux/rkbin/tarball/master -o rkbin.tgz
* rockchip-linux-rkbin-b4558da/
* b4458da July 25, 2023
* Added license file for the repository
* Cover binary release and source code tools.
* Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
* Change-Id: I71287e04f887a726ec316d297b9a0b1feb96c2b3

A zipball of this repository is here in this directory as rockchip-linux_rkbin_MasterBranch.zip
and a tarball as rkbin.tgz

## Files of Interest ##

The files of interest in this zipball/tarball to build ATF are:
* rk3568_bl31_v1.43.elf 
* rk3568_ddr_1560MHz_v1.18.bin
* rk3568_bl32_v2.10.bin
* RK3568TRUST.ini

Copies are in this directory.



