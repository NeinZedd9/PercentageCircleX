include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PercentageCircleX
PercentageCircleX_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
after-uninstall::
	uninstall.exec "killall -9 SpringBoard"
