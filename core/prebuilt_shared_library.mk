LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)

GAPPS_MODULE_PATH ?= TARGET_OUT_SHARED_LIBRARIES
# Evaluate the set LOCAL_MODULE_PATH, so we can override it on a per-library basis
GAPPS_MODULE_PATH_EVAL := $($(LOCAL_MODULE_PATH))

ifdef TARGET_2ND_ARCH
LOCAL_MULTILIB ?= both
# _32 is a bit special, and the reason why we need GAPPS_MODULE_PATH to point to a variable, and not
# the actual value. This will evaluate to 2ND_[TARGET_OUT_SHARED_LIBRARIES].
LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)$(GAPPS_MODULE_PATH))
LOCAL_MODULE_PATH_64 := $(GAPPS_MODULE_PATH_EVAL)
else
LOCAL_MODULE_PATH := $(GAPPS_MODULE_PATH_EVAL)
endif

include $(BUILD_PREBUILT)
