# Copyright (C) 2015 UBER Project
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

# Include UBER common configuration
include vendor/uber/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Override AOSP build properties
PRODUCT_NAME := uber_shamu
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0.0/NRD90M/3085278:user/release-keys \
	PRIVATE_BUILD_DESC="shamu-user 7.0.0 NRD90M 3085278 release-keys" 
# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
