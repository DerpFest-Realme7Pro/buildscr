rm -rf device/motorola/sanders
rm -rf vendor/motorola/sanders
rm -rf kernel/motorola/msm8953
git clone https://github.com/marshmello61/Derp-ify.git -b arcrctr device/motorola/sanders
git clone https://github.com/marshmello61/vendor.git -b pie vendor/motorola/sanders
git clone https://github.com/sai4041412/kernel_motorola_sanders.git -b 9.0 kernel/motorola/msm8953
rm -rf packages/apps/Updater
rm -rf packages/apps/Camera2
rm -rf packages/apps/SnapdragonCamera2
rm -rf packages/resources/devicesettings
rm -rf bootable/recovery
git clone https://github.com/marshmello61/android_packages_apps_SnapdragonCamera2.git -b pie packages/apps/SnapdragonCamera2
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-16.0 packages/resources/devicesettings
git clone https://github.com/derpfest-sanders/platform_packages_apps_Updater.git -b pie packages/apps/Updater
git clone https://github.com/AOSiP/platform_bootable_recovery.git -b pie bootable/recovery
