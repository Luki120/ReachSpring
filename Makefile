ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
TARGET := iphone:clang:latest:latest


INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk


TWEAK_NAME = ReachSpring


ReachSpring_FILES = Tweak.x
ReachSpring_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk    
            
