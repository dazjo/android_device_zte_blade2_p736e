$(call inherit-product, device/zte/blade2/blade2.mk)

# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=blade2 BUILD_ID=JRO03C BUILD_FINGERPRINT=ZTE/N880E_JB/atlas40:4.1.1/JRO03C/eng.songsy.20120718.233441:eng/test-keys PRIVATE_BUILD_DESC="N880E_JB-eng 4.1.1 JRO03C eng.songsy.20120718.233441 test-keys" BUILD_NUMBER=eng.songsy.20120718.233441

ifneq ($(CFX_BUILD),)
PRODUCT_NAME := cfx_blade2
else
PRODUCT_NAME := cm_blade2
endif
PRODUCT_DEVICE := blade2
PRODUCT_BRAND := ZTE
PRODUCT_MANUFACTURER := ZTE
PRODUCT_MODEL := Crescent
PRODUCT_RELEASE_NAME := Crescent

ifdef I_AM_DAZ
COMMON_GLOBAL_CFLAGS += -DSUPER_SMALL
PRODUCT_PACKAGES += \
    Basic \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    SoundRecorder \
    VisualizationWallpapers \
    VoiceDialer
endif