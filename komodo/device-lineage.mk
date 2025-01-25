#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/caimito/device-lineage.mk)

DEVICE_PACKAGE_OVERLAYS += device/google/caimito/komodo/overlay-lineage

PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayKomodo

TARGET_VENDOR_PROP += device/google/caimito/komodo/vendor.prop

# Init
PRODUCT_PACKAGES += \
    init.recovery.komodo.touch.rc
