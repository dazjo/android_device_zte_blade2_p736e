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

# This file includes all definitions that apply to ALL blade2 devices, and
# are also specific to blade2 devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/zte/blade2/overlay
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
        lights.blade2 \
        sensors.blade2 \
        librpc \
        Blade2Parts \
        libmm-omxcore \
        libOmxCore \
        libOmxVdec \
        libOmxVenc \
        libstagefrighthw \
        dexpreopt \
        camera.msm7x27 \
        gralloc.msm7x27 \
        copybit.msm7x27 \
        hwcomposer.msm7x27

PRODUCT_PACKAGES += \
        audio.primary.blade2 \
        audio_policy.blade2 \
        audio.a2dp.default \
        libaudioutils

DISABLE_DEXPREOPT := false

PRODUCT_COPY_FILES := \
        device/zte/blade2/init.blade2.rc:root/init.blade2.rc \
        device/zte/blade2/init.blade2.usb.rc:root/init.blade2.usb.rc \
        device/zte/blade2/ueventd.blade2.rc:root/ueventd.blade2.rc \
		device/zte/blade2/usbconfig:root/sbin/usbconfig \
        device/zte/blade2/vold.fstab:system/etc/vold.fstab \
        device/zte/blade2/prebuilt/blade2_keypad.kl:system/usr/keylayout/blade2_keypad.kl \
        device/zte/blade2/prebuilt/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
        device/zte/blade2/prebuilt/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
        device/zte/blade2/prebuilt/Generic.kl:system/usr/keylayout/Generic.kl \
        device/zte/blade2/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
        device/zte/blade2/AudioFilter.csv:system/etc/AudioFilter.csv \
        device/zte/blade2/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
        device/zte/blade2/media_profiles.xml:system/etc/media_profiles.xml \
        device/zte/blade2/prebuilt/start_usb0.sh:system/etc/start_usb0.sh \
        device/zte/blade2/gps.conf:system/etc/gps.conf

# Graphics
PRODUCT_COPY_FILES := \
        device/zte/blade2/prebuilt/libOpenVG.so:system/lib/libOpenVG.so \
        device/zte/blade2/prebuilt/libgsl.so:system/lib/libgsl.so \
        device/zte/blade2/prebuilt/libC2D2.so:system/lib/libC2D2.so \
        device/zte/blade2/prebuilt/libsc-a2xx.so:system/lib/libsc-a2xx.so \
        device/zte/blade2/prebuilt/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
        device/zte/blade2/prebuilt/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
        device/zte/blade2/prebuilt/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
        device/zte/blade2/prebuilt/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
        device/zte/blade2/prebuilt/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
        device/zte/blade2/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
        device/zte/blade2/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
        device/zte/blade2/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
        device/zte/blade2/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
        device/zte/blade2/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
        device/zte/blade2/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
        device/zte/blade2/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
        device/zte/blade2/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
        device/zte/blade2/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
        device/zte/blade2/init.bt.sh:system/etc/init.bt.sh \
        system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wi-Fi
PRODUCT_COPY_FILES += \
        device/zte/blade2/firmware/fw_4330b1.bin:system/etc/fw_4330b1.bin \
        device/zte/blade2/firmware/fw_4330b2.bin:system/etc/fw_4330b2.bin \
        device/zte/blade2/firmware/fw_4330_b1_apsta.bin:system/etc/fw_4330_b1_apsta.bin \
        device/zte/blade2/firmware/fw_4330_b2_apsta.bin:system/etc/fw_4330_b2_apsta.bin \
        device/zte/blade2/firmware/nv_4330b1.txt:system/etc/nv_4330b1.txt \
        device/zte/blade2/firmware/nv_4330b1.txt:system/etc/nv_4330b2.txt \
        device/zte/blade2/init.bt.sh:system/etc/init.bt.sh \
        device/zte/blade2/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
        device/zte/blade2/init.wlanprop.sh:system/etc/init.wlanprop.sh

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
         frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
         frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
         frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
         frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
         frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
         frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
         frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
         frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
         packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
         librs_jni

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
         PRODUCT_PACKAGES += send_bug
         PRODUCT_COPY_FILES += \
                 system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
                 system/extras/bugmailer/send_bug:system/bin/send_bug
endif

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
#$(call inherit-product, frameworks/base/build/phone-hdpi-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/zte/blade2/blade2-vendor.mk)
