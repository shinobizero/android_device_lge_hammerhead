$(call inherit-product, vendor/cm/products/zero_hammerhead.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/configs/phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0.1/M4B30Z/3437181:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0.1 M4B30Z 3437181 release-keys"
