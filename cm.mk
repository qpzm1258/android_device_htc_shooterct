# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooterct/shooterct.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooterct BUILD_FINGERPRINT="htc_europe/htc_shooterct/shooterct:4.0.3/IML74K/351412.1:user/release-keys" PRIVATE_BUILD_DESC="3.08.401.1 CL351412 release-keys"

# Device naming
PRODUCT_DEVICE := shooterct
PRODUCT_NAME := cm_shooterct
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := X515d

# Bootanimation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooterct

