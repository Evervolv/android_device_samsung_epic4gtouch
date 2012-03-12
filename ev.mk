# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/epic4gtouch/full_epic4gtouch.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit wimax stuff.
$(call inherit-product, vendor/ev/config/wimax.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_epic4gtouch
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := epic4gtouch
PRODUCT_MODEL := SPH-D710
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPB:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPB release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Clarus
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Epic 4G Touch\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#PRODUCT_PACKAGES += \
    Camera

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

# wvga overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/wvga

# Hot reboot -- Not sure if this is supported yet.
#PRODUCT_PACKAGE_OVERLAYS += \
#    vendor/ev/overlay/hot_reboot

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage,adb
