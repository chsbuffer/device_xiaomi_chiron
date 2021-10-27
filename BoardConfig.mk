# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/chiron

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := chiron_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := chiron

# Releasetools
# TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# SELinux
#BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from proprietary files
include vendor/xiaomi/chiron/BoardConfigVendor.mk
