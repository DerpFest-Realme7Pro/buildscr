rm -rf device/motorola/sanders
rm -rf kernel/motorola/msm8953
rm -rf vendor/motorola/sanders
git clone https://github.com/DerpFest-Devices/vendor_motorola_sanders.git -b ten vendor/motorola/sanders
git clone https://github.com/ronaxdevil/parallax_kernel_sanders.git -b p-pf kernel/motorola/msm8953
git clone https://github.com/DerpFest-Devices/device_motorola_sanders.git -b ten device/motorola/sanders
echo "lol"
rm -rf hardware/qcom-caf/power
rm -rf hardware/qcom/power
echo "Yo boii"
echo "ok"
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom-caf/power
git clone https://github.com/DerpFest-Sanders/android_hardware_qcom_power.git -b lineage-16.0 hardware/qcom/power
echo "xD"
