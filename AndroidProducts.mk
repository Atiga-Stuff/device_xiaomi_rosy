#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2023 AtigaOS Project
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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/afterlife_rosy.mk

COMMON_LUNCH_CHOICES := \
    afterlife_rosy-user \
    afterlife_rosy-userdebug \
    afterlife_rosy-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/derp_rosy.mk

COMMON_LUNCH_CHOICES += \
    derp_rosy-user \
    derp_rosy-userdebug \
    derp_rosy-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/lineage_rosy.mk

COMMON_LUNCH_CHOICES += \
    lineage_rosy-user \
    lineage_rosy-userdebug \
    lineage_rosy-eng
