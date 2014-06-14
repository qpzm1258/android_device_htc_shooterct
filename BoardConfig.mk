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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/shooterct/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := shooterct

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooterct

BOARD_USES_LEGACY_RIL := true
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_RIL_CLASS := "../../../device/htc/vigor/ril/"
BOARD_RIL_NO_CELLINFOLIST:=true

# 3D Support
TARGET_HARDWARE_3D := true

# Kernel Details
TARGET_KERNEL_CONFIG := shooter_ct_defconfig

# Camera
BOARD_HTC_3D_SUPPORT := true

#ION
TARGET_USES_ION := true

# Bluetooth/wifi
BOARD_LEGACY_NL80211_STA_EVENTS  := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# Broadcom BCM43xx chips are WiFi/BT capable
BOARD_HAVE_BLUETOOTH_BCM         := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/shooterct/bluetooth

# Custom LUN File Path
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooterct no_console_suspend=1
BOARD_KERNEL_BASE := 0x48800000
BOARD_KERNEL_PAGE_SIZE := 2048 

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p31: 000ffa00 00000200 "misc"
#mmcblk0p21: 00fffc00 00000200 "recovery"
#mmcblk0p20: 01000000 00000200 "boot"
#mmcblk0p22: 31fffc00 00000200 "system"
#mmcblk0p24: 077fde00 00000200 "cache"
#mmcblk0p23: 4aabc400 00000200 "userdata"
#mmcblk0p27: 01400000 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"
#mmcblk0p17: 02800000 00000200 "radio"
#mmcblk0p19: 01000000 00000200 "adsp"
#mmcblk0p18: 007ffa00 00000200 "radio_config"
#mmcblk0p25: 00400000 00000200 "modem_st1"
#mmcblk0p26: 00400000 00000200 "modem_st2"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 262144

#Recovery
TARGET_RECOVERY_FSTAB := device/htc/shooterct/ramdisk/fstab.shooterct
TARGET_RECOVERY_UI_LIB := librecovery_ui_shooterct
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_NO_MSM_BSP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/shooterct/recovery/graphics.c

#TWRP
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

#Philz
TARGET_COMMON_NAME := HTC X515d
