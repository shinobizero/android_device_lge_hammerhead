ZERO_PRODUCT_DEVICE ?= hammerhead

# Inherit some common ZeroROM stuff.
$(call inherit-product, vendor/zero/config/phone.mk)

# ElementalX-specific init file
PRODUCT_COPY_FILES += \
    kernel/lge/hammerhead-ELEMENTALX/init.elementalx.rc:root/init.elementalx.rc

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerhead
PRODUCT_NAME := zero_hammerhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
