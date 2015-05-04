USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/CherryMobile/Ultra/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := MSM8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := Ultra

#Checked unmkbootimg for this:
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags
BOARD_KERNEL_BASE := 0x1dfff00
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x00200100, --kernel_offset 0xFE208100, --second_offset 0xFF100100
BOARD_HAS_NO_REAL_SDCARD := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6454973440
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/CherryMobile/Ultra/prebuilt/kernel
TARGET_USERIMAGES_USE_EXT4 := true

#We'll add the target recovery initrc(init.qcom.rc or init.rc) and fstab
#Not needed if we use the init.recovery.{hardware}.rc
#TARGET_RECOVERY_INITRC := device/CherryMobile/Ultra/recovery/init.rc
#TARGET_RECOVERY_FSTAB := device/CherryMobile/Ultra/recovery/recovery.fstab

#Graphics & Resolution
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 720x1280
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"


#Have SElinux (For Android 4.3 and above)
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true

#Rocker Settings
BOARD_HAS_NO_SELECT_BUTTON := true
