## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P970

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p970/full_p970.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p970
PRODUCT_NAME := cm_p970
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Optimus Black

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=P970 BUILD_ID=IMM76I BUILD_DISPLAY_ID=IMM76I BUILD_FINGERPRINT=lge/lge_bproj/bproj_262-XXX:2.3.4/GRJ22/LG-P970-V20o.47B5196A:user/release-keys PRIVATE_BUILD_DESC="lge_bproj-user 2.3.4 GRJ22 LG-P970-V20o.47B5196A release-keys"
