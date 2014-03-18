# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common.mk)

# Device naming
PRODUCT_NAME := liquid_shooteru

# Inherit device configuration
$(call inherit-product, device/htc/shooteru/full_shooteru.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
