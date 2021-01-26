# AAPT
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Inherit from msm8998-common
$(call inherit-product, device/xiaomi/msm8998-common/msm8998.mk)

# Firmware
# $(call inherit-product, device/xiaomi/chiron-firmware/firmware.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl

# Properties
include $(LOCAL_PATH)/vendor_prop.mk

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/chiron/chiron-vendor.mk)
