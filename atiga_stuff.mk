#
# Copyright (C) 2023 The AtigaOS Project
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

# Include our private certificate
-include vendor/atiga-priv/keys/keys.mk

ifneq ($(USE_ATIGA_STUFF),)
# Inherit from AtigaFx
$(call inherit-product-if-exists, vendor/atiga/fx/fx.mk)
TARGET_USE_FX := true

USE_ATIGA_LAUNCHER ?= false
ifeq ($(USE_ATIGA_LAUNCHER),true)
# AtigaLauncher
PRODUCT_PACKAGES += \
    AtigaLauncherQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    AtigaLauncherQuickStep
endif

# AtigaArts
PRODUCT_PACKAGES += \
    AtigaArtsStub
endif
