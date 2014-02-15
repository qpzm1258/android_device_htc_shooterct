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

# Boot animation
TARGET_SCREEN_WIDTH := 540

PRODUCT_LOCALES := en_US en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN zh_HK ru_RU ko_KR nb_NO es_US d

# Release name
PRODUCT_RELEASE_NAME := shooteru
