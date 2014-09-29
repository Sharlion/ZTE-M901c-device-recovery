## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P692N60

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/P692N60/device_P692N60.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := P692N60
PRODUCT_NAME := cm_P692N60
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE M901C
PRODUCT_MANUFACTURER := ZTE
