$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/armani/armani-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/armani/overlay

LOCAL_PATH := device/lenovo/armani
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lenovo/armani/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# lenovo blobs for recovery

PRODUCT_COPY_FILES += \
    device/lenovo/armani/recovery/init.rc:recovery/root/init.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_armani
PRODUCT_DEVICE := armani
