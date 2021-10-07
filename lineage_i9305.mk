# Release name
PRODUCT_RELEASE_NAME := i9305

# Inherit device configuration
$(call inherit-product, device/samsung/i9305/i9305.mk)
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/smdk4412-qcom-common/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9305
PRODUCT_NAME := lineage_i9305
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9305
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=m3xx \
	TARGET_DEVICE=m3 \
	PRIVATE_BUILD_DESC="m3xx-user 4.4.4 KTU84P I9305XXUFPB1 release-keys"

BUILD_FINGERPRINT=samsung/m3xx/m3:4.4.4/KTU84P/I9305XXUFPB1:user/release-keys