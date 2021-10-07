#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/i9305

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := lineageos_i9305_defconfig

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE :=104857600
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Vendor
BOARD_VENDORIMAGE_PARTITION_SIZE := 587202560

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9305/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_DENSITY := mdpi

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35

# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,i9305,GT-I9305

# inherit from the proprietary version
-include vendor/samsung/i9305/BoardConfigVendor.mk

# Init
ifneq ($(WITH_TWRP), true)
TARGET_INIT_VENDOR_LIB := libinit_i9305
endif

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/i9305/selinux/vendor
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/samsung/i9305/selinux/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/samsung/i9305/selinux/private
