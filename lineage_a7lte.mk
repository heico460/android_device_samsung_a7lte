# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, device/samsung/a7lte/full_a7lte.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit System Prop for a7lte 
$(call inherit-product, device/samsung/a7lte/system_prop.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := lineage_a7lte
BOARD_VENDOR := samsung
PRODUCT_DEVICE := a7lte

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR_PRODUCT_NAME := a7lte
TARGET_VENDOR_DEVICE_NAME := a7ltexx
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=a7lte PRODUCT_NAME=a7ltexx

# Assert
TARGET_OTA_ASSERT_DEVICE := a7lte

# Fingerprint
BUILD_FINGERPRINT := samsung/a7ltexx/a7lte:6.0.1/MMB29M/A700FDXXS1CPK1:user/release-keys
BUILD_DESCRIPTION := a7ltexx-user 6.0.1 MMB29M A700FDXXS1CPK1 release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a7ltexx \
    TARGET_DEVICE="a7ltexx"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
