#
# Copyright (C) 2018-2019 The LineageOS Project
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from trinket-common
-include device/xiaomi/trinket-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/laurel_sprout

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# Dex
BOARD_USES_SYSTEM_OTHER_ODEX := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/xiaomi/laurel_sprout
TARGET_KERNEL_CONFIG := vendor/laurel_sprout-perf_defconfig

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115869577216
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

BOARD_USES_METADATA_PARTITION := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Sepolicy
TARGET_EXCLUDE_QCOM_SEPOLICY := true
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy-minimal

# Inherit from the proprietary version
-include vendor/xiaomi/laurel_sprout/BoardConfigVendor.mk
-include vendor/miuicamera/common/BoardConfigVendor.mk
