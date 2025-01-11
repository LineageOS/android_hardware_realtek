ifeq ($(BOARD_WLAN_DEVICE), realtek)
	include $(call all-subdir-makefiles)
include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
endif
