LOCAL_PATH := .
include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCalendarSyncAdapter
LOCAL_PACKAGE_NAME := com.google.android.syncadapters.calendar
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/app

include $(BUILD_GAPPS_PREBUILT_APK)
