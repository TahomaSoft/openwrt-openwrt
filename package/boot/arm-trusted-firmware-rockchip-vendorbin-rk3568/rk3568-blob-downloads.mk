# Makefile
# October 2023
# Copyright tahomasoft.com


# https://github.com/rockchip-linux/rkbin.git
# https://github.com/rockchip-linux/tarball/rkbin.git
# curl -L https://api.github.com/repos/Baeldung/kotlin-tutorials/tarball/master -o new-api.tgz

# curl -L https://api.github.com/repos/rockchip-linux/rkbin/tarball/master -o rkbin.tgz
# rockchip-linux-rkbin-b4558da/

# b4458da July 25, 2023

# Add license file for the repository

# Cover binary release and source code tools.

# Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
# Change-Id: I71287e04f887a726ec316d297b9a0b1feb96c2b3



all: rk3568_bl31_v1.43.elf rk3568_ddr_1560MHz_v1.18.bin rk3568_bl32_v2.10.bin RK3568TRUST.ini


rk3568_bl31_v1.43.elf:
	wget https://raw.github.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_bl31_v1.43.elf
	touch $@

rk3568_ddr_1560MHz_v1.18.bin:
	wget https://raw.github.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin
	touch $@

rk3568_bl32_v2.10.bin:
	wget https://raw.githubusercontent.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_bl32_v2.10.bin
	touch $@

RK3568TRUST.ini:
	wget https://github.com/rockchip-linux/rkbin/blob/master/RKTRUST/RK3568TRUST.ini
	touch $@
