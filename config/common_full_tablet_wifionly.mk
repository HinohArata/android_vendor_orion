$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common OrionOs stuff
$(call inherit-product, vendor/orion/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include OrionOs LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/orion/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/orion/overlay/dictionaries

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true

$(call inherit-product, vendor/orion/config/wifionly.mk)
