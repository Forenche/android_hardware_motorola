#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

HARDWARE_PATH := hardware/motorola

# Overlay
PRODUCT_PACKAGES += \
    MotoCommonOverlay

ifeq ($(TARGET_BUILDS_OSS_BIOMETRICS),true)
# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.motorola

# UDFPS Overlays
PRODUCT_PACKAGES += \
    MotoUDFPSOverlay
endif
