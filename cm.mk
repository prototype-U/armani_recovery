## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := armani

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/armani/device_armani.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := armani
PRODUCT_NAME := cm_armani
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo A706
PRODUCT_MANUFACTURER := lenovo
