rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/ArrowOS-Devices/android_vendor_motorola_sanders.git -b arrow-10.0 vendor/motorola/sanders
git clone https://github.com/ArrowOS-Devices/android_kernel_motorola_sanders.git -b arrow-10.0 kernel/motorola/msm8953
git clone https://github.com/marshmello61/tann.git -b d101 device/motorola/sanders
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-17.0 packages/resources/devicesettings
git clone https://github.com/ArrowOS/android_system_qcom -b arrow-10.0 system/qcom
