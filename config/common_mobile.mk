# Inherit common mobile Orion stuff
$(call inherit-product, vendor/orion/config/common.mk)

# Include AOSP audio files
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage14.mk)
include vendor/orion/config/aosp_audio.mk

# Include Orion audio files
include vendor/orion/config/orion_audio.mk

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Apps
PRODUCT_PACKAGES += \
    Backgrounds \
    Glimpse

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation \
    lineage_charger_animation_vendor
endif

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    ThemePicker \
    ThemesStub
