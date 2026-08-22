PRODUCT_CFI_INCLUDE_PATHS += hardware/realtek/wlan/wpa_supplicant_8_lib

PRODUCT_SOONG_NAMESPACES += hardware/realtek/wlan

$(call soong_config_set,wpa_supplicant_8,board_wlan_device,realtek)
