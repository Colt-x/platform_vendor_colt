# Copyright (C) 2018 ColtOS Project
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

 include vendor/colt/config/version.mk

PRODUCT_BRAND ?= COLT

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/colt/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/colt/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \
    vendor/colt/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/colt/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/colt/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# Bootanimation
$(call inherit-product, vendor/colt/config/bootanimation.mk)

DEVICE_PACKAGE_OVERLAYS += \
    vendor/colt/overlay/common \
    vendor/colt/overlay/dictionaries

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true


PRODUCT_PACKAGES += \
    Terminal \
    GboardGoPreb \
    LiveWallpapers \
    LiveWallpapersPicker \
    Stk \
    ViaBrowser \
    WallpaperPickerGoogle \
    MarkupGoogle \
    WellbeingPrebuilt

# Fonts
#PRODUCT_PACKAGES += \
    Fonts

# CustomDoze
#PRODUCT_PACKAGES += \
    CustomDoze

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/colt/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# JamesDSP
PRODUCT_PACKAGES += \
   libjamesdsp

# MusicFX
#PRODUCT_PACKAGES += \
    Eleven \
    MusicFX

# Lawnchair
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/colt/prebuilt/common/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

# Colt Packages
#PRODUCT_PACKAGES += \
    OmniStyle \
    Lawnchair

# Live Display
PRODUCT_COPY_FILES += \
    vendor/colt/config/permissions/privapp-permissions-custom.xml:system/etc/permissions/privapp-permissions-custom.xml

# Weather
# PRODUCT_COPY_FILES +=  \
     vendor/colt/prebuilt/common/etc/sysconfig/org.pixelexperience.weather.client.xml:system/etc/sysconfig/org.pixelexperience.weather.client.xml \
     vendor/colt/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/default-permissions/org.pixelexperience.weather.client.xml \
     vendor/colt/prebuilt/common/etc/permissions/privapp-permissions-colt.xml:system/etc/permissions/privapp-permissions-colt.xml

# PRODUCT_PROPERTY_OVERRIDES += \
     org.pixelexperience.weather.revision=2

# PRODUCT_PACKAGES += \
     WeatherClient

# SubstratumSignature Package
#PRODUCT_COPY_FILES += \
     vendor/colt/prebuilt/common/priv-app/SubstratumSignature.apk:system/priv-app/SubstratumSignature/SubstratumSignature.apk

# QS tile styles
#PRODUCT_PACKAGES += \
    QStileCircleTrim \
    QStileDefault \
    QStileDualToneCircle \
    QStileSquircleTrim \
    QStileCookie \
    QStileAttemptMountain \
    QStileCircleDual \
    QStileCircleGradient \
    QStileDottedCircle \
    QStileNinja \
    QStilePokesign \
    QStileWavey \
    QStileInk \
    QStileInkDrop \
    QStileSquaremedo \
    QStileOreo \
    QStileTeardrop \
    QStileOreoCircleTrim \
    QStileOreoSquircleTrim \
    QStilesCircleOutline \
    QStileHexagon \
    QStileStar \
    QStileSquare \
    QStileGear \
    QStileBadge \
    QStileBadgetwo \
    QStileSquircle \
    QStileDiamond \
    QStileNeonlike \
    QStileOOS \
    QStileTriangles \
    QStileDivided \
    QStileCosmos

# Omni's PoorMan Themes
#PRODUCT_PACKAGES += \
    DocumentsUITheme \
    ContactsTheme \
    MessagesTheme \
    DialerTheme \
    TelecommTheme \
    GboardDarkTheme

# QS header styles
#PRODUCT_PACKAGES += \
    QSHeaderBlack \
    QSHeaderGrey \
    QSHeaderLightGrey \
    QSHeaderAccent \
    QSHeaderTransparent

#PRODUCT_PACKAGES += \
    NotificationsBlack \
    NotificationsDark \
    NotificationsEnigma \
    NotificationsColtBlue \
    NotificationsLight \
    NotificationsPrimary

#PRODUCT_PACKAGES += \
    AccentSluttyPink \
    AccentPixel \
    AccentGoldenShower \
    AccentDeepOrange \
    AccentMisticBrown \
    AccentOmni \
    AccentWhite \
    AccentTeal \
    AccentFromHell \
    AccentBlueMonday \
    AccentSmokingGreen \
    AccentDeadRed \
    AccentRottenOrange \
    AccentDeepPurple \
    AccentCandyRed \
    AccentJadeGreen \
    AccentPaleBlue \
    AccentPaleRed \
    AccentObfusBleu \
    AccentNotImpPurple \
    AccentHolillusion \
    AccentMoveMint \
    AccentFootprintPurple \
    AccentBubblegumPink \
    AccentFrenchBleu \
    AccentManiaAmber \
    AccentSeasideMint \
    AccentDreamyPurple \
    AccentSpookedPurple \
    AccentHeirloomBleu \
    AccentTruFilPink \
    AccentWarmthOrange \
    AccentColdEveningBleu \
    AccentDiffDayGreen \
    AccentDuskPurple \
    AccentBurningRed \
    AccentHazedPink \
    AccentColdSummerYellow \
    AccentNewHouseOrange \
    AccentIllusionsPurple \
    AccentFlare \
    AccentSublime \
    AccentSincityRed \
    AccentOrangeCoral \
    AccentPureLust \
    AccentQuepal \
    AccentShadesOfGrey \
    AccentSweetQPurple \
    AccentQGreen \
    AccentElegantGreen

#PRODUCT_PACKAGES += \
    PrimaryAlmostBlack \
    PrimaryBlack \
    PrimaryEnigma \
    PrimaryColtBlue \
    PrimaryColtTrans \
    PrimaryOmni \
    PrimaryWhite \
    PrimaryColdWhite \
    PrimaryWarmWhite \
    PrimaryDarkBlue \
    PrimaryViolator \
    PrimaryTealMeal \
    PrimaryRocky \
    PrimaryColtChocko \
    PrimaryBlueBlack

# Switch themes
#PRODUCT_PACKAGES += \
    MD2Switch \
    OnePlusSwitch \
    StockSwitch \
    Contained \
    Retro \
    Stockish \
    Narrow

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml \
    privapp-permissions-turbo.xml

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    7z \
    bash \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    vim \
    rsync \
    zip

# Colt Fonts - Copy to System fonts
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/fonts/gobold/Gobold.ttf:system/fonts/Gobold.ttf \
    vendor/colt/prebuilt/fonts/gobold/Gobold-Italic.ttf:system/fonts/Gobold-Italic.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldBold.ttf:system/fonts/GoboldBold.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:system/fonts/GoboldBold-Italic.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldThinLight.ttf:system/fonts/GoboldThinLight.ttf \
    vendor/colt/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:system/fonts/GoboldThinLight-Italic.ttf \
    vendor/colt/prebuilt/fonts/roadrage/road_rage.ttf:system/fonts/RoadRage-Regular.ttf \
    vendor/colt/prebuilt/fonts/neoneon/neoneon.ttf:system/fonts/Neoneon-Regular.ttf \
    vendor/colt/prebuilt/fonts/mexcellent/mexcellent.ttf:system/fonts/Mexcellent-Regular.ttf \
    vendor/colt/prebuilt/fonts/burnstown/burnstown.ttf:system/fonts/Burnstown-Regular.ttf \
    vendor/colt/prebuilt/fonts/dumbledor/dumbledor.ttf:system/fonts/Dumbledor-Regular.ttf \
    vendor/colt/prebuilt/fonts/PhantomBold/PhantomBold.ttf:system/fonts/PhantomBold-Regular.ttf \
    vendor/colt/prebuilt/fonts/snowstorm/snowstorm.ttf:system/fonts/Snowstorm-Regular.ttf \
    vendor/colt/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:system/fonts/ThemeableFont-Regular.ttf \
    vendor/colt/prebuilt/fonts/Shamshung/Shamshung.ttf:system/fonts/Shamshung.ttf

# Exchange Support
PRODUCT_PACKAGES += \
    Exchange2

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/colt/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# init.d support
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# LatinIME gesture typing
ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/colt/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
else
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/colt/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
endif

# Vendor specific init files
$(foreach f,$(wildcard vendor/colt/prebuilt/common/etc/init/*.rc),\
    $(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# init file
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/etc/init.local.rc:root/init.aosp.rc

# Bring in camera effects
#PRODUCT_COPY_FILES +=  \
 #   vendor/colt/prebuilt/common/media/LMspeed_508.emd:system/media/LMspeed_508.emd \
  #  vendor/colt/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/colt/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/colt/prebuilt/common/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Media
PRODUCT_GENERIC_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Some props that we need for the google stuff we're adding
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.ime.height_ratio=1.05 \
    ro.com.google.ime.emoji_key=false

# Needed by some RILs and for some gApps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Sounds
include vendor/colt/config/sounds.mk

# Default ringtone/notification/alarm sounds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.ringtone=Havana_Remix.ogg,galaxy.ogg \
    ro.config.notification_sound=Ceres.ogg \
    ro.config.alarm_alert=Helium.ogg

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

# Include SDCLANG definitions if it is requested and available
#ifeq ($(HOST_OS),linux)
#    ifneq ($(wildcard vendor/qcom/sdclang-4.0/),)
#        include vendor/aosp/sdclang/sdclang.mk
#    endif
#endif
