#!/bin/bash

# common
git clone https://github.com/rama982/twrp-device_transsion_mt6895-common.git -b fox_12.1-tranos12 device/transsion/mt6895-common

export FOX_ASH_IS_BASH=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_USE_BASH_SHELL=1
export FOX_USE_DATE_BINARY=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_SED_BINARY=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_ZSTD_BINARY=1
export FOX_VARIANT="15.1.0"
export FOX_VANILLA_BUILD=1
export FOX_VIRTUAL_AB_DEVICE=1

export OF_ALLOW_DISABLE_NAVBAR=0
export OF_BIND_MOUNT_SDCARD_ON_FORMAT=1
export OF_CLOCK_POS=1
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_ENABLE_ALL_PARTITION_TOOLS=1
export OF_ENABLE_LPTOOLS=1
export OF_FLASHLIGHT_ENABLE=0
export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
export OF_MAINTAINER="rama982 - build naze"
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_OPTIONS_LIST_NUM=9
export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_UNBIND_SDCARD_F2FS=1
export OF_USE_LZ4_COMPRESSION=true
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="5G"
export CCACHE_DIR=".ccache"

if [ ! -d ${CCACHE_DIR} ]; then
  mkdir $CCACHE_DIR
fi

export LC_ALL="C"

# Clone to fix build on minimal manifest
git clone https://android.googlesource.com/platform/external/gflags/ -b android-12.1.0_r4 external/gflags