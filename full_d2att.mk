# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
 
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
 
# Kernel modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(LOCAL_PATH)/modules/dhd.ko:system/lib/modules/dhd.ko \
    $(LOCAL_PATH)/modules/evbug.ko:system/lib/modules/evbug.ko \
    $(LOCAL_PATH)/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    $(LOCAL_PATH)/modules/qcedev.ko:system/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
    $(LOCAL_PATH)/modules/spidev.ko:system/lib/modules/spidev.ko \
    $(LOCAL_PATH)/modules/btlock.ko:system/lib/modules/btlock.ko \
    $(LOCAL_PATH)/modules/dma_test.ko:system/lib/modules/dma_test.ko \
    $(LOCAL_PATH)/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    $(LOCAL_PATH)/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/modules/qce40.ko:system/lib/modules/qce40.ko

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d2tmo device
$(call inherit-product, device/samsung/d2tmo/device.mk)
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_d2att
PRODUCT_DEVICE := d2att
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-I747
