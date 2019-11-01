rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/ronaxdevil/vendor_motorola_sanders.git -b ten vendor/motorola/sanders
git clone https://github.com/ronaxdevil/mayhem-kernel.git -b ten kernel/motorola/msm8953
git clone https://github.com/marshmello61/tann.git -b d10 device/motorola/sanders
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-17.0 packages/resources/devicesettings
