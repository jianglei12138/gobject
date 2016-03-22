LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := gobject
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/gio \
	$(LOCAL_PATH)/libffi/include \
	$(LOCAL_PATH)/glib \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/glib/glib \
	$(LOCAL_PATH)/gobject \

ifeq ($(TARGET_ARCH),arm)
  LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libffi/include/arm

endif

ifeq ($(TARGET_ARCH),arm-v7a)
  LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libffi/include/arm

endif

ifeq ($(TARGET_ARCH),mips)
  LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libffi/include/mips

endif


LOCAL_SRC_FILES := \
	gobject/gatomicarray.c    gobject/gsignal.c \
	gobject/gbinding.c        gobject/gsourceclosure.c \
	gobject/gboxed.c          gobject/gtype.c \
	gobject/gclosure.c        gobject/gtypemodule.c \
	gobject/genums.c          gobject/gtypeplugin.c \
	gobject/gmarshal.c        gobject/gvalue.c \
	gobject/gobject.c         gobject/gvaluearray.c \
	gobject/gparam.c          gobject/gvaluetransform.c \
	gobject/gparamspecs.c     gobject/gvaluetypes.c \

LOCAL_STATIC_LIBRARIES := ffi
LOCAL_LDLIBS := -lz
LOCAL_SHARED_LIBRARIES := glib
LOCAL_CFLAGS := -DHAVE_CONFIG_H

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/libffi/Android.mk
include $(LOCAL_PATH)/../glib/Android.mk