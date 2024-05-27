PRODUCT_VERSION_MAJOR = 14
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
ORION_VERSION := Cosmic-Beta

# OOS maintainer flags
ORION_MAINTAINER ?= Unknown

# Check Official
ifndef ORION_BUILD_TYPE
    ORION_BUILD_TYPE := UNOFFICIAL
endif

# Internal version
LINEAGE_VERSION := OrionOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(ORION_VERSION)-$(LINEAGE_BUILD)-$(ORION_BUILD_TYPE)-$(ORION_BUILD_VARIANT)-$(shell date +%Y%m%d)

# Display version
LINEAGE_DISPLAY_VERSION := OrionOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(ORION_VERSION)-$(LINEAGE_BUILD)-$(ORION_BUILD_TYPE)-$(ORION_BUILD_VARIANT)

ORION_BUILD_INFO := $(LINEAGE_VERSION)
