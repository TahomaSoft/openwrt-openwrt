# Test makefile

all: rk3568_bl31_v1.43.elf rk3568_ddr_1560MHz_v1.18.bin rk3568_bl32_v2.10.bin RK3568TRUST.ini


rk3568_bl31_v1.43.elf:
	wget https://github.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_bl31_v1.43.elf
	touch $@

rk3568_ddr_1560MHz_v1.18.bin:
	wget https://github.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin
	touch $@

rk3568_bl32_v2.10.bin:
	wget https://github.com/rockchip-linux/rkbin/blob/master/bin/rk35/rk3568_bl32_v2.10.bin
	touch $@

RK3568TRUST.ini:
	wget https://github.com/rockchip-linux/rkbin/blob/master/RKTRUST/RK3568TRUST.ini
	touch $@

