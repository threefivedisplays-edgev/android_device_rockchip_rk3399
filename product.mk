# Copyright (C) 2014 The Android Open Source Project
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
# This file is the build configuration that is shared by all products
# based on the rk3399 device
#
PRODUCT_RUNTIMES := runtime_libart_default

$(call inherit-product, device/rockchip/rk3399/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

ifeq ($(BUILD_WITH_GAPPS_CONFIG),true)
$(call inherit-product-if-exists, vendor/rockchip/google/gapps.mk)
endif
ifeq ($(BUILD_WITH_ROOT_CONFIG),true)
$(call inherit-product-if-exists, vendor/rockchip/root/root.mk)
endif
