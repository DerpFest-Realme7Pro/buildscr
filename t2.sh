rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/DerpFest-Sanders/platform_vendor_motorola_sanders.git -b ten vendor/motorola/sanders
git clone https://github.com/marshmello61/parallax_kernel_sanders.git -b p-pf kernel/motorola/msm8953
git clone https://github.com/marshmello61/tann_motorola_sanders.git -b rebase3 device/motorola/sanders
rm -rf packages/resources/devicesettings
rm -rf hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/power
rm -rf hardware/qcom/power
echo "Yo boii"
rm -rf system/qcom
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-17.0 packages/resources/devicesettings
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_display.git -b lineage-17.0-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom-caf/power
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom/power
echo "xD"
git clone https://github.com/ArrowOS/android_system_qcom.git -b arrow-10.0 system/qcom
