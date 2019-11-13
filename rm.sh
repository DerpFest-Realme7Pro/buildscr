rm -rf frameworks/base
rm -rf vendor/aosip
rm -rf build/make
rm -rf pac*/apps/Settings
rm -rf vendor/pixelstyle
git clone https://github.com/DerpFest-Sanders/platform_frameworks_base.git -b ten frameworks/base
git clone https://github.com/DerpFest-Sanders/platform_vendor_aosip.git -b ten vendor/aosip
git clone https://github.com/DerpFest-Sanders/platform_build.git -b ten build/make
git clone https://github.com/DerpFest-Sanders/platform_packages_apps_Settings.git -b ten packages/apps/Settings
git clone https://github.com/DerpFest-Sanders/platform_vendor_pixelstyle.git -b ten vendor/pixelstyle
