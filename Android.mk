LOCAL_PATH := $(call my-dir)

ifeq (ef52 ef52l ef52s ef52k,$(TARGET_DEVICE))
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
