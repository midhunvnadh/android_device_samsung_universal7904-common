LOCAL_PATH := hardware/samsung/hidl/thermal

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.thermal@2.0-service.samsung_universal7904
LOCAL_MODULE_STEM := android.hardware.thermal@2.0-service.samsung
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/29/bin
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    service.cpp \
    Thermal.cpp \
    thermal-helper.cpp \
    utils/config_parser.cpp \
    utils/thermal_files.cpp \
    utils/thermal_watcher.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.thermal@2.0-service.samsung.rc \
    android.hardware.thermal@2.0-service.samsung.xml

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libhidlbase \
    libutils \
    libcutils \
    android.hardware.thermal@1.0 \
    android.hardware.thermal@2.0

LOCAL_STATIC_LIBRARIES := \
    libjsoncpp

LOCAL_CFLAGS += -Wall -Werror -Wextra -Wunused
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.thermal@2.0-service.samsung.rc
LOCAL_MODULE_STEM :=  android.hardware.thermal@1.0-service.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/29/etc/init
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.thermal@2.0-service.samsung.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/29/etc/vintf/manifest
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT) 
