## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Ultra

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/CherryMobile/Ultra/device_Ultra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Ultra
PRODUCT_NAME := cm_Ultra
PRODUCT_BRAND := CherryMobile
PRODUCT_MODEL := Ultra
PRODUCT_MANUFACTURER := CherryMobile
