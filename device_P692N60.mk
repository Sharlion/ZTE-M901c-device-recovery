$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/P692N60/P692N60-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/P692N60/overlay

LOCAL_PATH := device/zte/P692N60
LOCAL_RECOVERY_PATH := device/zte/P692N60/recovery

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.mt6592:root/fstab.mt6592

$(call inherit-product, build/target/product/full.mk)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := full_P692N60
PRODUCT_DEVICE := P692N60

