rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/DerpFest-Devices/vendor_motorola_sanders.git -b ten vendor/motorola/sanders
git clone https://github.com/ronaxdevil/parallax_kernel_sanders.git -b p-pf kernel/motorola/msm8953
git clone https://github.com/DerpFest-Devices/device_motorola_sanders.git -b ten device/motorola/sanders
echo "lol"
rm -rf hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/power
rm -rf hardware/qcom/power
echo "Yo boii"
rm -rf system/qcom
echo "ok"
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_display.git -b lineage-17.0-caf-msm8996 hardware/qcom-caf/msm8996/display
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom-caf/power
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom/power
echo "xD"
git clone https://github.com/ArrowOS/android_system_qcom.git -b arrow-10.0 system/qcom
