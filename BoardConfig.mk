#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# Use the non-open-source parts, if they're present
-include vendor/zte/blade2/BoardConfigVendor.mk

-include device/zte/msm7x27-common/BoardConfigCommon.mk

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/blade2/recovery_kernel
TARGET_RECOVERY_INITRC := device/zte/blade2/recovery/recovery.rc

# Kernel
ifdef P736E
TARGET_KERNEL_CONFIG := cyanogen_blade2_p736e_defconfig
TARGET_PREBUILT_KERNEL := device/zte/blade2/kernel_p736e
else
TARGET_KERNEL_CONFIG := cyanogen_blade2_p736v_defconfig
TARGET_PREBUILT_KERNEL := device/zte/blade2/kernel_p736v
endif

BOARD_KERNEL_CMDLINE := androidboot.hardware=blade2 console=null

TARGET_BOOTLOADER_BOARD_NAME := blade2

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/fw_4330b1.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/fw_4330_b1_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/fw_4330b1.bin nvram_path=/system/etc/nv_4330b1.txt iface_name=wlan"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_BAND := 802_11_ABG

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

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
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0de00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072
