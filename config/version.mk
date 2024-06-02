PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

# Increase OOS Version with each major release.
ORION_VERSION := Cosmic

# OOS maintainer flags
ORION_MAINTAINER ?= Unknown

# Check Official
ifndef ORION_BUILD_TYPE
    ORION_BUILD_TYPE := UNOFFICIAL
endif

# Gapps
WITH_GMS := $(ORION_GAPPS)
ifeq ($(ORION_GAPPS),true)
ORION_BUILD_VARIANT := Gapps
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)
PRODUCT_PACKAGES += OtaGapps
else
  PRODUCT_PACKAGES += OtaVanila
  ORION_BUILD_VARIANT := Vanilla
endif

# Internal version
ORION_VERSION := OrionOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(ORION_VERSION)-$(ORION_BUILD)-$(ORION_BUILD_TYPE)-$(ORION_BUILD_VARIANT)-$(shell date +%Y%m%d)

# Display version
ORION_DISPLAY_VERSION := OrionOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(ORION_VERSION)-$(ORION_BUILD)-$(ORION_BUILD_TYPE)-$(ORION_BUILD_VARIANT)

ORION_BUILD_INFO := $(ORION_VERSION)
