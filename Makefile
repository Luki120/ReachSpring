ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ReachSpring

ReachSpring_FILES = Tweak.x
ReachSpring_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
