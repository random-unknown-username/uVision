$(call inherit-product-if-exists, target/allwinner/v851se-common/v851se-common.mk)

PRODUCT_PACKAGES +=

PRODUCT_COPY_FILES +=

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := musicbox

PRODUCT_BRAND := allwinner
PRODUCT_NAME := v851se_uvision
PRODUCT_DEVICE := v851se-uvision
PRODUCT_MODEL := Allwinner v851se uvision board
