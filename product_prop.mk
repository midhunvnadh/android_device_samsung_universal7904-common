# Blurs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.supports_background_blur=1

# Configstore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# Dex2oat
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

# fastbootd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=1

# LMKD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true \
    ro.lmk.log_stats=true

# Tones
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg \
    ro.config.ringtone=Orion.ogg

# VNDK
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vndk.lite=false

# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true
