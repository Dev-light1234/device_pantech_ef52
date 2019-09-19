#
# Copyright 2019 The Android Open Source Project
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

# inherit from common iron
-include device/pantech/iron-common/BoardConfigCommon.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200 #1.7GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 #25.7GB
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_OTA_ASSERT_DEVICE := ef52l,ef52s,ef52k

# Kernel
TARGET_KERNEL_SOURCE := kernel/pantech/ef52
TARGET_KERNEL_CONFIG := aosp_ef52_defconfig

# Platform
BOARD_VENDOR_PLATFORM := pantech-iron

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2013-09-30

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef52l/bluetooth

# Sensor
EF52_USE_KITKAT_SENSORS := yes

# TWRP screen config
DEVICE_RESOLUTION := 720x1280

# inherit from the proprietary version
-include vendor/pantech/ef52l/BoardConfigVendor.mk
