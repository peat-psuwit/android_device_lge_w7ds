USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/w7ds/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := w7ds

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=w7ds
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x16000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x16000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x80000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xfbd80000
BOARD_FLASH_BLOCK_SIZE := 131072

#Comment the line below to build kernel from source. (But not for now LOL)
TARGET_USE_PREBUILT := true

ifeq ($(TARGET_USE_PREBUILT),true)
TARGET_PREBUILT_KERNEL := device/lge/w7ds/kernel
BOARD_MKBOOTIMG_ARGS  := --dt device/lge/w7ds/dt.img
else
TARGET_KERNEL_SOURCE := kernel/lge/msm8974 #We don't have it yet.
TARGET_KERNEL_CONFIG := w7ds_open_cis_defconfig
G2_DTS_TARGET := msm8226-w7ds_open_cis
BOARD_CUSTOM_BOOTIMG_MK := device/lge/w7ds/mkbootimg.mk
endif

BOARD_HAS_NO_SELECT_BUTTON := true
