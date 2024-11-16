#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

TARGET_LINUX_KERNEL_VERSION := 6.1

# Inherit some common stuff
TARGET_DISABLE_EPPE := true

# Statix Shit
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

include vendor/google/gms/Android.mk

# Inherit device configuration
DEVICE_CODENAME := komodo
DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/komodo
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zumapro/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Common GMS
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Pixel
TARGET_SUPPORTS_GOOGLE_BATTERY := true
TARGET_SUPPORTS_ADPATIVE_CHARGING := true
TARGET_SUPPORTS_GOOGLE_CAMERA := true
TARGET_GOOGLE_CAMERA_LARGE_RAM := true
TARGET_SUPPORTS_DREAMLINER := true
TARGET_SUPPORTS_SATELLITE_SOS := true
TARGET_PIXEL_EXPERIENCE_2022 := true
TARGET_PIXEL_EXPERIENCE_2023 := true
TARGET_PIXEL_EXPERIENCE_2024 := true
TARGET_SUPPORTS_CLEAR_CALLING := true
TARGET_SUPPORTS_PIXEL_SCREENSHOTS := true
TARGET_SUPPORTS_PIXEL_STUDIO := true

# Blur
TARGET_USES_BLUR := true

# Launcher
INCLUDE_PIXEL_LAUNCHER := true

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_NAME := statix_$(DEVICE_CODENAME)
PRODUCT_DEVICE := komodo
PRODUCT_MANUFACTURER := Google

#STATIX_BUILD_TYPE := OFFICIAL

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="komodo-user 15 AP3A.241105.008 12485168 release-keys" \
    BuildFingerprint=google/komodo/komodo:15/AP3A.241105.008/12485168:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, vendor/google/komodo/komodo-vendor.mk)
