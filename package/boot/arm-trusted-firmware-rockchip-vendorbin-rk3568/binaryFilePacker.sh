#!/bin/bash


ACTION="$1"
VARIANT="$2"
PKG_BUILD_DIR="$3"
STAGING_DIR_IMAGE="$4"

case "$VARIANT" in
"rk3568")
	ATF="./rk3568_bl31_v1.43.elf"
	DDR="./rk3568_ddr_1560MHz_v1.18.bin"
	;;
*)
	echo -e "Not compatible with your platform: $VARIANT."
	exit 1
	;;
esac

set -x

if [ "$ACTION" == "build" ]; then
    echo -e "build is not relevant for this platform"
    exit 1
fi
    

if [ "$ACTION" == "install" ]; then
	mkdir -p "$STAGING_DIR_IMAGE"
	cp -fp "$PKG_BUILD_DIR/bin/$ATF" "$STAGING_DIR_IMAGE"/
	case "$VARIANT" in
	rk33*)
		cp -fp "$PKG_BUILD_DIR/tools/loaderimage" "$STAGING_DIR_IMAGE"/
		cp -fp "$PKG_BUILD_DIR/$VARIANT-idbloader.bin" "$STAGING_DIR_IMAGE"/
		cp -fp "$PKG_BUILD_DIR/$VARIANT-trust.bin" "$STAGING_DIR_IMAGE"/
		;;
	rk35*)
		cp -fp "$PKG_BUILD_DIR/bin/$DDR" "$STAGING_DIR_IMAGE"/
		;;
	esac
else
	echo -e "Unknown operation: $ACTION."
	exit 1
fi
set +x

