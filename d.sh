rm -rf device/motorola/sanders
rm -rf vendor/motorola/sanders
rm -rf kernel/motorola/msm8953
git clone https://github.com/marshmello61/derp_device_motorola_sanders.git -b pie device/motorola/sanders
git clone https://github.com/evolution-x-devices/vendor_motorola_sanders.git -b pie vendor/motorola/sanders
git clone https://github.com/evolution-x-devices/kernel_motorola_sanders.git -b pie kernel/motorola/msm8953
rm -rf packages/apps/Updater
rm -rf packages/apps/Camera2
rm -rf packages/apps/SnapdragonCamera2
rm -rf packages/resources/devicesettings
git clone https://github.com/omnirom/android_packages_apps_SnapdragonCamera2.git -b android-9.0 packages/apps/SnapdragonCamera2
git clone https://github.com/Xtended-Devices/android_packages_resources_devicesettings.git -b xp packages/resources/devicesettings
git clone https://github.com/derpfest-sanders/platform_packages_apps_Updater.git -b pie packages/apps/Updater
. build/envsetup.sh
lunch aosip_sanders-userdebug
mka kronic -j32
