LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

BDROID_DIR := $(TOP_DIR)packages/modules/Bluetooth/system

LOCAL_CFLAGS := \
        -Wno-deprecated-non-prototype \
        -Wno-implicit-int

LOCAL_SRC_FILES := \
        rtk_socket.c \
        bt_vendor_rtk.c \
        hardware.c \
        userial_vendor.c \
        upio.c \
        bt_list.c \
        bt_skbuff.c \
        hci_h5.c \
        rtk_parse.c \
        rtk_btservice.c \
        hardware_uart.c \
        hardware_usb.c \
        rtk_heartbeat.c \
        rtk_poll.c \
        rtk_btsnoop_net.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../codec/sbc \
        $(LOCAL_PATH)/../codec/plc \
        $(BDROID_DIR)/hci/include

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        libutils \
        liblog

LOCAL_WHOLE_STATIC_LIBRARIES := \
        libbt-codec

LOCAL_MODULE := libbt-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
