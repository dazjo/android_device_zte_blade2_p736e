# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-include device/zte/common/BoardConfigCommon.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/blade2/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/blade2/recovery/graphics.c

# Board related defines
TARGET_BOOTLOADER_BOARD_NAME := blade2

# Kernel
TARGET_PREBUILT_KERNEL := device/zte/blade2/prebuilt/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=blade2 console=null

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := bcm4330
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4330b1.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4330_b1_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4330b1.bin nvram_path=/system/etc/nv_4330b1.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00600000 00020000 "recovery"
# mtd1: 00400000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 03980000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 00100000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"

# Image file stuff
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072
