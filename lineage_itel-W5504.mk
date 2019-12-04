# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from itel-W5504 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := itel
PRODUCT_DEVICE := itel-W5504
PRODUCT_MANUFACTURER := itel
PRODUCT_NAME := lineage_itel-W5504
PRODUCT_MODEL := itel W5504

PRODUCT_GMS_CLIENTID_BASE := android-itel
TARGET_VENDOR := itel
TARGET_VENDOR_PRODUCT_NAME := itel-W5504
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="W5504-user 8.1.0 OPM2.171019.012 272 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Itel/F3103/itel-W5504:8.1.0/OPM2.171019.012/OP-V030-20190322:user/release-keys
