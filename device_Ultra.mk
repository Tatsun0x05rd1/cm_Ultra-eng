$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/CherryMobile/Ultra/Ultra-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/CherryMobile/Ultra/overlay


# Set USB type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.adb.enable=1

LOCAL_PATH := device/CherryMobile/Ultra
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_Ultra
PRODUCT_DEVICE := Ultra

PRODUCT_COPY_FILES_OVERRIDES += \
     root/fstab.goldfish \
     root/init.goldfish.rc \
     recovery/root/fstab.goldfish
