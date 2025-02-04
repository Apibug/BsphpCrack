export THEOS=/var/jb/var/mobile/theos

ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = shaoxing

shaoxing_EXTRA_FRAMEWORKS += 
shaoxing_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG

shaoxing_CFLAGS = -fobjc-arc -Wno-unused-variable -Wno-deprecated-declarations -Wno-format-security -Wno-unused-but-set-variable -I./AFNetworking -I./CocoaAsyncSocket -I./Core -I./Core/Categories -I./Core/Mime -I./Core/Responses -I./EasyAES -I./MBProgressHUD -I./SAMKeychain -I./SCLAlertView -I./UDID 

shaoxing_FILES =  $(wildcard bsphp/*.mm)



#Text_LIBRARIES += substrate
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk
