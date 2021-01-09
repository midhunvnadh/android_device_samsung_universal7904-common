LOCAL_PATH := $(call my-dir)

ifneq ($(filter m20lte gta3xlwifi, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
