$(call inherit-product, device/qcom/msm8610/msm8610.mk)

PRODUCT_COPY_FILES := \
    device/qcom/msm8610/audio_policy.conf:system/etc/audio_policy.conf \
    device/qcom/msm8610/media/media_codecs_8610.xml:system/etc/media_codecs.xml \
    device/qcom/msm8610/media/media_profiles_8610.xml:system/etc/media_profiles.xml \
    device/qcom/msm8610/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/qcom/msm8610/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/qcom/msm8610/WCNSS_qcom_wlan_nv.bin:persist/WCNSS_qcom_wlan_nv.bin \
    device/t2m/flame/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/t2m/flame/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf \
    system/bluetooth/data/input.conf:system/etc/bluetooth/input.conf \
    system/bluetooth/data/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    system/bluetooth/data/network.conf:system/etc/bluetooth/network.conf \
    system/bluetooth/data/audio.conf:system/etc/bluetooth/audio.conf \
    system/bluetooth/data/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    device/t2m/flame/fstab.qcom:root/fstab.qcom \
    device/t2m/flame/init.target.rc:root/init.target.rc \
    device/t2m/flame/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/t2m/flame/Goodix-TS.kl:system/usr/keylayout/Goodix-TS.kl \

TARGET_DEVICE_BLOBS := vendor/t2m/flame/flame-vendor-blobs.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, $(TARGET_DEVICE_BLOBS))

$(call inherit-product, frameworks/base/data/sounds/AudioPackage6.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml


PRODUCT_PROPERTY_OVERRIDES += \
  persist.radio.multisim.config=dsds \
  ro.moz.devinputjack=1 \
  ro.moz.nfc.enabled=true \
  ro.moz.ril.0.network_types=gsm,wcdma \
  ro.moz.ril.1.network_types=gsm \
  ro.moz.ril.emergency_by_default=true \
  ro.moz.ril.numclients=2 \
  ro.moz.ril.subscription_control=true \
  org.bluez.device.conn.type=array \


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        persist.sys.usb.config=diag,serial_smd,serial_tty,rmnet_bam,mass_storage

PRODUCT_PACKAGES += \
  nfcd \
  libaudioroute \
  libnfc-pn547 \
  librecovery

DEVICE_PACKAGE_OVERLAYS += device/t2m/flame/overlay


BOOTANIMATION_ASSET_SIZE := qHD

PRODUCT_NAME := flame
PRODUCT_DEVICE := flame
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := t2m
PRODUCT_MODEL := flame
