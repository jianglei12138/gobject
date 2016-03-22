
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := shared/$(TARGET_ARCH_ABI)/libglib.so
LOCAL_MODULE:= glib
include $(PREBUILT_SHARED_LIBRARY)
