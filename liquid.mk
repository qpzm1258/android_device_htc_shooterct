# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/theme_chooser.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooteru/full_shooteru.mk)

# Device naming
PRODUCT_DEVICE := shooteru
PRODUCT_NAME := liquid_shooteru
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D GSM

# Bootanimation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooteru
