set(STM32_STDPERIPH_USBOTG_DIR "${INAV_LIB_DIR}/main/STM32_USB_OTG_Driver")
set(STM32_STDPERIPH_USBCORE_DIR "${INAV_LIB_DIR}/main/STM32_USB_Device_Library/Core")
set(STM32_STDPERIPH_USBCDC_DIR "${INAV_LIB_DIR}/main/STM32_USB_Device_Library/Class/cdc")
set(STM32_STDPERIPH_USBHID_DIR "${INAV_LIB_DIR}/main/STM32_USB_Device_Library/Class/hid")
set(STM32_STDPERIPH_USBWRAPPER_DIR "${INAV_LIB_DIR}/main/STM32_USB_Device_Library/Class/hid_cdc_wrapper")
set(STM32_STDPERIPH_USBMSC_DIR "${INAV_LIB_DIR}/main/STM32_USB_Device_Library/Class/msc")
set(STM32_STDPERIPH_USBFS_DIR "${INAV_LIB_DIR}/main/STM32_USB-FS-Device_Driver")

set(STM32_STDPERIPH_USB_INCLUDE_DIRS
    "${STM32_STDPERIPH_USBOTG_DIR}/inc"
    "${STM32_STDPERIPH_USBCORE_DIR}/inc"
    "${STM32_STDPERIPH_USBCDC_DIR}/inc"
    "${STM32_STDPERIPH_USBHID_DIR}/inc"
    "${STM32_STDPERIPH_USBWRAPPER_DIR}/inc"
    "${STM32_STDPERIPH_USBMSC_DIR}/inc"
    "${STM32_STDPERIPH_USBFS_DIR}/inc"
)

SET(STM32_STDPERIPH_USBOTG_SRC_EXCLUDES
    usb_bsp_template.c
    usb_conf_template.c
    usb_hcd_int.c
    usb_hcd.c
    usb_otg.c
)
set(STM32_STDPERIPH_USBOTG_SRC
    usb_core.c
    usb_dcd.c
    usb_dcd_int.c
)
list(TRANSFORM STM32_STDPERIPH_USBOTG_SRC PREPEND "${STM32_STDPERIPH_USBOTG_DIR}/src/")

set(STM32_STDPERIPH_USBCORE_SRC
    usbd_core.c
    usbd_ioreq.c
    usbd_req.c
)
list(TRANSFORM STM32_STDPERIPH_USBCORE_SRC PREPEND  "${STM32_STDPERIPH_USBCORE_DIR}/src/")

set(STM32_STDPERIPH_USBCDC_SRC
    "${STM32_STDPERIPH_USBCDC_DIR}/src/usbd_cdc_core.c"
)

set(STM32_STDPERIPH_USBHID_SRC
    "${STM32_STDPERIPH_USBHID_DIR}/src/usbd_hid_core.c"
)

set(STM32_STDPERIPH_USBWRAPPER_SRC
    "${STM32_STDPERIPH_USBWRAPPER_DIR}/src/usbd_hid_cdc_wrapper.c"
)

set(STM32_STDPERIPH_USBMSC_SRC
    usbd_msc_bot.c
    usbd_msc_core.c
    usbd_msc_data.c
    usbd_msc_scsi.c
)
list(TRANSFORM STM32_STDPERIPH_USBMSC_SRC PREPEND "${STM32_STDPERIPH_USBMSC_DIR}/src/")

list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBOTG_SRC})
list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBCORE_SRC})
list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBCDC_SRC})
list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBHID_SRC})
list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBWRAPPER_SRC})
list(APPEND STM32_STDPERIPH_USB_SRC ${STM32_STDPERIPH_USBMSC_SRC})
