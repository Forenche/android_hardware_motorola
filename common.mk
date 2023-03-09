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

ifeq ($(TARGET_BUILDS_OSS_SENSORS_SUBHAL),true)
# Sensors
PRODUCT_COPY_FILES += \
    $(HARDWARE_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

PRODUCT_PACKAGES += \
    sensors.motorola

# Sensors Overlays
PRODUCT_PACKAGES += \
    MotoSensorsOverlay
endif
