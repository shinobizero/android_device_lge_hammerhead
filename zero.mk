ZERO_PRODUCT_DEVICE ?= hammerhead

# Inherit some common ZeroROM stuff.
$(call inherit-product, vendor/zero/config/phone.mk)

# BOOTANIMATION
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/media/1080-bootanimation.zip:system/media/bootanimation.zip

# ElementalX-specific init file
PRODUCT_COPY_FILES += \
    kernel/lge/hammerhead-ELEMENTALX/init.elementalx.rc:root/init.elementalx.rc

# ZeroROM prebuilt hammerhead binaries, libs & scripts
PRODUCT_COPY_FILES += \
    vendor/zero/prebuilt/xbin/nexutil:system/xbin/nexutil \
    vendor/zero/prebuilt/xbin/libfakeioctl.so:system/xbin/libfakeioctl.so \
    vendor/zero/prebuilt/xbin/libfakeioctlkali.so:system/xbin/libfakeioctlkali.so \
    vendor/zero/prebuilt/xbin/ethtool:system/xbin/ethtool \
    vendor/zero/prebuilt/xbin/macchanger:system/xbin/macchanger \
    vendor/zero/prebuilt/xbin/cowpatty:system/xbin/cowpatty \
    vendor/zero/prebuilt/xbin/genpmk:system/xbin/genpmk \
    vendor/zero/prebuilt/xbin/reaver:system/xbin/reaver \
    vendor/zero/prebuilt/xbin/reaver-wash:system/xbin/reaver-wash \
    vendor/zero/prebuilt/xbin/airbase-ng:system/xbin/airbase-ng \
    vendor/zero/prebuilt/xbin/aircrack-ng:system/xbin/aircrack-ng \
    vendor/zero/prebuilt/xbin/airdecap-ng:system/xbin/airdecap-ng \
    vendor/zero/prebuilt/xbin/aireplay-ng:system/xbin/aireplay-ng \
    vendor/zero/prebuilt/xbin/airodump-ng:system/xbin/airodump-ng \
    vendor/zero/prebuilt/xbin/airolib-ng:system/xbin/airolib-ng \
    vendor/zero/prebuilt/xbin/airserv-ng:system/xbin/airserv-ng \
    vendor/zero/prebuilt/xbin/airtun-ng:system/xbin/airtun-ng \
    vendor/zero/prebuilt/xbin/besside-ng:system/xbin/besside-ng \
    vendor/zero/prebuilt/xbin/buddy-ng:system/xbin/buddy-ng \
    vendor/zero/prebuilt/xbin/dhdutil:system/xbin/dhdutil \
    vendor/zero/prebuilt/xbin/easside-ng:system/xbin/easside-ng \
    vendor/zero/prebuilt/xbin/ivstools:system/xbin/ivstools \
    vendor/zero/prebuilt/xbin/iw:system/xbin/iw \
    vendor/zero/prebuilt/xbin/iwconfig:system/xbin/iwconfig \
    vendor/zero/prebuilt/xbin/iwlist:system/xbin/iwlist \
    vendor/zero/prebuilt/xbin/iwpriv:system/xbin/iwpriv \
    vendor/zero/prebuilt/xbin/kstats:system/xbin/kstats \
    vendor/zero/prebuilt/xbin/makeivs-ng:system/xbin/makeivs-ng\
    vendor/zero/prebuilt/xbin/mdk3:system/xbin/mdk3 \
    vendor/zero/prebuilt/xbin/nc:system/xbin/nc \
    vendor/zero/prebuilt/xbin/packetforge-ng:system/xbin/packetforge-ng \
    vendor/zero/prebuilt/xbin/tcpdump:system/xbin/tcpdump \
    vendor/zero/prebuilt/xbin/tkiptun-ng:system/xbin/tkiptun-ng \
    vendor/zero/prebuilt/xbin/wesside-ng:system/xbin/wesside-ng \
    vendor/zero/prebuilt/xbin/wpaclean:system/xbin/wpaclean \
    vendor/zero/prebuilt/xbin/monstart-nh:system/xbin/monstart-nh \
    vendor/zero/prebuilt/xbin/monstop-nh:system/xbin/monstop-nh \
    vendor/zero/prebuilt/xbin/nh-tools:system/xbin/nh-tools

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
