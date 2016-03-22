
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := static/$(TARGET_ARCH_ABI)/libffi.a
LOCAL_MODULE:= ffi
include $(PREBUILT_STATIC_LIBRARY)
