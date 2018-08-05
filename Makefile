include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ClassicDockforiPhoneX
ClassicDockforiPhoneX_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
