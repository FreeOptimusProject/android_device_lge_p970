# Copyright (C) 2012 The Android Open Source Project
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
# build for crespo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/lge/p970/p970.mk)
$(call inherit-product, build/target/product/full.mk)

# LGE P970 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_p970
PRODUCT_DEVICE := p970
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := LG Optimus Black
