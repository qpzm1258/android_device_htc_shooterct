#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/shooterct/overlay

# ramdisk stuff
PRODUCT_COPY_FILES += \
    device/htc/shooterct/ramdisk/init.shooterct.rc:root/init.shooterct.rc \
    device/htc/shooterct/ramdisk/init.shooterct.usb.rc:root/init.shooterct.usb.rc \
    device/htc/shooterct/ramdisk/ueventd.shooterct.rc:root/ueventd.shooterct.rc \
    device/htc/shooterct/ramdisk/fstab.shooterct:root/fstab.shooterct

# recovery and custom charging
PRODUCT_PACKAGES += \
    init.recovery.shooterct.rc \
    twrp.fstab \
    choice_fn \
    detect_key \
    offmode_charging \
    power_test \
    htcbatt

# dsp Audio
PRODUCT_COPY_FILES += \
    device/htc/shooterct/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/shooterct/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/shooterct/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/shooterct/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/shooterct/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/shooterct/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/shooterct/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/shooterct/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/shooterct/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/shooterct/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/shooterct/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/shooterct/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/shooterct/dsp/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
    device/htc/shooterct/dsp/IOTable.txt:system/etc/IOTable.txt \
    device/htc/shooterct/dsp/IOTable_NEL.txt:system/etc/IOTable_NEL.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_HP_NEL.txt:system/etc/soundimage/Sound_Phone_Original_HP_NEL.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_NEL.txt:system/etc/soundimage/Sound_Phone_Original_NEL.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_REC_Voda.txt:system/etc/soundimage/Sound_Phone_Original_REC_Voda.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_SPK_NEL.txt:system/etc/soundimage/Sound_Phone_Original_SPK_NEL.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_SPK_Voda.txt:system/etc/soundimage/Sound_Phone_Original_SPK_Voda.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/shooterct/dsp/soundimage/Sound_Phone_Original_WB.txt:system/etc/soundimage/Sound_Phone_Original_WB.txt \
    device/htc/shooterct/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/shooterct/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/shooterct/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Wifi firmware
BOARD_WLAN_DEVICE_REV 	:= bcm4330_b2
WIFI_BAND               := 802_11_BG

# Bluetooth firmware
$(call inherit-product, device/htc/msm8660-common/bcm_hcd.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooterct/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/shooterct/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/shooterct/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/shooterct/keylayout/shooterct-keypad.kl:system/usr/keylayout/shooterct-keypad.kl \
    device/htc/shooterct/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl
# Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooterct/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/shooterct/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/shooterct/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/shooterct/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/shooterct/keychars/shooterct-keypad.kcm:system/usr/keychars/shooterct-keypad.kcm

# idc
PRODUCT_COPY_FILES += \
    device/htc/shooterct/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/shooterct/idc/shooterct-keypad.idc:system/usr/idc/shooterct-keypad.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/shooterct/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/shooterct/firmware/default_rogers_bak.acdb:system/etc/firmware/default_rogers_bak.acdb

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/shooterct/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/shooterct/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/shooterct/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/shooterct/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/shooterct/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# GPS
PRODUCT_PACKAGES += \
    gps.shooterct

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Kernel init.d script
PRODUCT_COPY_FILES += \
    device/htc/shooterct/configs/99kernel:system/etc/init.d/99kernel \
    device/htc/shooterct/configs/00_frandom:system/etc/init.d/00_frandom

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Fix USB transfer speeds
PRODUCT_PROPERTY_OVERRIDES += ro.vold.umsdirtyratio=20

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# ADB
ADDITIONAL_DEFAULT_PROPERTIES+=  ro.adb.secure=0

# (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/htc/shooterct/shooterct-vendor.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/shooterct/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/shooterct/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

