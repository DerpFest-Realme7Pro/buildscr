git clone https://github.com/marshmello61/derp_device_motorola_sanders.git -b aosip-eas device/motorola/sanders
git clone https://github.com/marshmello61/vendor_motorola_sanders.git -b stable-h vendor/motorola/sanders
git clone https://github.com/marshmello61/kernel_motorola_msm8953.git -b test-v kernel/motorola/msm8953
rm -rf packages/apps/Updater
rm -rf packages/apps/Camera2
git clone https://github.com/omnirom/android_packages_apps_SnapdragonCamera2.git -b android-9.0 packages/apps/SnapdragonCamera2
git clone https://github.com/Xtended-Devices/android_packages_resources_devicesettings.git -b xp packages/resources/devicesettings
