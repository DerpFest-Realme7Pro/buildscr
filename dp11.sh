# system/qcom
echo "// Checking for system/qcom //"
sleep 1
if [ -e system/qcom ]
then
   echo "system/qcom exists. Skipping..."
   sleep 1
else
   echo "Cloning system/qcom"
   git clone https://github.com/ArrowOS/android_system_qcom -b arrow-11.0 system/qcom
fi

# system/tools/dtbtool
echo "// Checking for system/tools/dtbtool //"
sleep 1
if [ -e system/tools/dtbtool ]
then
   echo "system/tools/dtbtool exists. Skipping..."
   sleep 1
else
   echo "Cloning system/tools/dtbtool"
   git clone https://github.com/LineageOS/android_system_tools_dtbtool -b lineage-17.1 system/tools/dtbtool
fi

# hardware/qcom-caf/wlan
echo "// Replacing hardware/qcom-caf/wlan //"
sleep 1
rm -rf hardware/qcom-caf/wlan
git clone https://github.com/DerpFest-Sanders/platform_hardware_qcom-caf_wlan -b 11 hardware/qcom-caf/wlan
echo "Done"
sleep 1

# system/tools/mkbootimg
echo "// Adding --dt support in system/tools/mkbootimg //"
sleep 1
cd system/tools/mkbootimg
git fetch https://github.com/DerpFest-Sanders/platform_system_tools_mkbootimg 11
git cherry-pick 7236400200691399f8cad4ad3f298d7258f30a67
cd ../../..

# system/sepolicy
echo "// Adding temp sepolicy //"
sleep 1
cd system/sepolicy
git fetch https://github.com/DerpFest-Sanders/platform_system_sepolicy 11
git cherry-pick 8ae2b97ed235424f68bd28cb9935603456fcc66b
cd ../..

# vendor/derp
echo "// Removing gapps //"
sleep 1
cd vendor/derp
git fetch https://github.com/DerpFest-Sanders/platform_vendor_derp 11
git cherry-pick -s 081ee1e214cf806f0d797ee829e2afdf6ea24365
cd ../..
