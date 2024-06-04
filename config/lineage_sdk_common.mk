# Permissions for lineage sdk services
PRODUCT_COPY_FILES += \
    vendor/orion/config/permissions/org.orion.globalactions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.globalactions.xml \
    vendor/orion/config/permissions/org.orion.hardware.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.hardware.xml \
    vendor/orion/config/permissions/org.orion.health.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.health.xml \
    vendor/orion/config/permissions/org.orion.livedisplay.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.livedisplay.xml \
    vendor/orion/config/permissions/org.orion.profiles.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.profiles.xml \
    vendor/orion/config/permissions/org.orion.settings.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.settings.xml \
    vendor/orion/config/permissions/org.orion.trust.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/org.orion.trust.xml

# Lineage Platform Library
PRODUCT_PACKAGES += \
    org.lineageos.platform-res \
    org.lineageos.platform

# AOSP has no support of loading framework resources from /system_ext
# so the SDK has to stay in /system for now
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/framework/oat/%/org.lineageos.platform.odex \
    system/framework/oat/%/org.lineageos.platform.vdex \
    system/framework/org.lineageos.platform-res.apk \
    system/framework/org.lineageos.platform.jar

ifndef LINEAGE_PLATFORM_SDK_VERSION
  # This is the canonical definition of the SDK version, which defines
  # the set of APIs and functionality available in the platform.  It
  # is a single integer that increases monotonically as updates to
  # the SDK are released.  It should only be incremented when the APIs for
  # the new release are frozen (so that developers don't write apps against
  # intermediate builds).
  LINEAGE_PLATFORM_SDK_VERSION := 9
endif

ifndef LINEAGE_PLATFORM_REV
  # For internal SDK revisions that are hotfixed/patched
  # Reset after each LINEAGE_PLATFORM_SDK_VERSION release
  # If you are doing a release and this is NOT 0, you are almost certainly doing it wrong
  LINEAGE_PLATFORM_REV := 0
endif
