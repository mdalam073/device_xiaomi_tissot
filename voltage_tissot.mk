#
# Copyright (C) 2023-2024 The LineageOS Project
#               2023-2024 VoltageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# VoltageOS Flags.
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_AOSP_RECOVERY := true
# Official-ify.
VOLTAGE_BUILD_TYPE := UNOFFICIAL

# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_DEVICE := tissot
PRODUCT_NAME := voltage_tissot
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"
