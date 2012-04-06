# Copyright (C) 2009 The Android Open Source Project
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

# Proprietary and common side of the device.
$(call inherit-product-if-exists, vendor/zte/blade2/blade2-vendor.mk)
$(call inherit-product, device/zte/common/device_zte.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := zte_blade2
PRODUCT_DEVICE := blade2
PRODUCT_MODEL := Crescent
PRODUCT_BRAND := ZTE

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Init
PRODUCT_COPY_FILES += \
    device/zte/blade2/prebuilt/init.blade2.rc:root/init.blade2.rc \
    device/zte/blade2/prebuilt/init.blade2.usb.rc:root/init.blade2.usb.rc \
    device/zte/blade2/prebuilt/ueventd.blade2.rc:root/ueventd.blade2.rc \
    device/zte/blade2/prebuilt/usbconfig:root/sbin/usbconfig

# Keypad files
PRODUCT_COPY_FILES += \
    device/zte/blade2/prebuilt/usr/keylayout/blade2_keypad.kl:system/usr/keylayout/blade2_keypad.kl \
    device/zte/blade2/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/zte/blade2/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/blade2/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/zte/blade2/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/zte/blade2/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/zte/blade2/prebuilt/etc/fw_4330b1.bin:system/etc/fw_4330b1.bin \
    device/zte/blade2/prebuilt/etc/fw_4330b2.bin:system/etc/fw_4330b2.bin \
    device/zte/blade2/prebuilt/etc/fw_4330_b1_apsta.bin:system/etc/fw_4330_b1_apsta.bin \
    device/zte/blade2/prebuilt/etc/fw_4330_b2_apsta.bin:system/etc/fw_4330_b2_apsta.bin \
    device/zte/blade2/prebuilt/etc/nv_4330b1.txt:system/etc/nv_4330b1.txt \
    device/zte/blade2/prebuilt/etc/nv_4330b1.txt:system/etc/nv_4330b2.txt \
    device/zte/blade2/prebuilt/etc/init.bt.sh:system/etc/init.bt.sh \
    device/zte/blade2/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/zte/blade2/prebuilt/etc/init.wlanprop.sh:system/etc/init.wlanprop.sh

