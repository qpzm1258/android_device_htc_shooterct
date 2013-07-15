# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooteru/full_shooteru.mk)

# Device naming
PRODUCT_DEVICE := shooteru
PRODUCT_NAME := liquid_shooteru
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D GSM
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.shooteru.UNOFFICIAL.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Boot animation
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := shooteru
