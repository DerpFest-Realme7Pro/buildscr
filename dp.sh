#!/bin/bash
rm -rf one two three four five six seven eight nine

# Abort on errors
set -e

BUILD_START=$(date +"%s")
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'

read -e -p "Do you want to sync source?;[y/n] " ans0;

case $ans0 in
   y|Y)
        echo -e "$blue// Syncing DerpFest Source //$nocol"
        repo init -u git://github.com/DerpLab/platform_manifest.git -b ten
	repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-sync -j$(nproc --all) --quiet;;
   n|N)
	echo -e "$yellow// Skipping syncing source //$nocol";;
esac
echo " "
echo " "

# Doing Sanders-ify


echo "1. Pick commits of frameworks/base"
echo "2. Pick commits of DerpQuest"
echo "3. Pick commits of build/make"
echo "4. Pick commits of vendor/overlay"
echo "5. Pick commits of Settings"
echo "6. Pick commits of vendor/pixelstyle"
echo "7. Pick commits of vendor/aosip"
echo "8. Pick commits of OmniStyle"
echo "9. Import FaceUnlock feature"
echo "10. Pick commits of every repo above"
read -e -p "Select anyone from above: " ans;

case $ans in
   1)
	mkdir one;;
   2)
	mkdir two;;
   3)
	mkdir three;;
   4)
	mkdir four;;
   5)
	mkdir five;;
   6)
	mkdir six;;
   7)
	mkdir seven;;
   8)
	mkdir eight;;
   9)
	mkdir nine;;
   10)
	mkdir one two three four five six seven eight nine;;
esac



## fw/base
if [ -e one ]
then
echo -e "$blue// Picking commits of frameworks/base //$nocol"
cd frameworks/base
git fetch https://github.com/DerpFest-Sanders/platform_frameworks_base ten
git cherry-pick 96d788602d2894c158c529dba800fa00e751df29
git cherry-pick 8135d0a9479af030d36ce21ac6a34a7d13b11cfa
git cherry-pick 541ae8cd9b1f23f4a40a007af775c7c801dd44d1
git push -f https://github.com/DerpFest-Sanders/platform_frameworks_base HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf one
fi

## DerpQuest
if [ -e two ]
then
echo -e "$blue// Picking commits of DerpQuest //$nocol"
cd pac*/apps/DerpQuest
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_DerpQuest ten
git cherry-pick 0ef34962b2180f0f69ddc9c65320d21b61c0c2ee
git cherry-pick ebc56621117aed56f46857bf76a15f87541bffd3
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_DerpQuest HEAD:ten2
cd ../../..
echo " "
echo " "
rm -rf two
fi

## build/make
if [ -e three ]
then
echo -e "$blue// Picking commits of build //$nocol"
cd build/make
git fetch https://github.com/DerpFest-Sanders/platform_build mine
git cherry-pick fea68116eb2232e376d6a7d90af177b1f6bc7f0f
git push -f https://github.com/DerpFest-Sanders/platform_build HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf three
fi

## vendor/overlay
if [ -e four ]
then
echo -e "$blue// Picking commits of vendor/overlay //$nocol"
cd vendor/overlay
git fetch https://github.com/DerpFest-Sanders/platform_vendor_overlay ten
git cherry-pick c425885cbeb5d9c9e21694aa351e5b6a133efe04
git cherry-pick 5d8a1215c40bbc2b95c393e6d02735eb03487583
git push -f https://github.com/DerpFest-Sanders/platform_vendor_overlay HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf four
fi

## Settings
if [ -e five ]
then
echo -e "$blue// Picking commits of Settings //$nocol"
cd pac*/apps/Settings
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_Settings ten
#git cherry-pick af1e4c66fef50c675ac532caa71f1f3f6a9c7b58
git cherry-pick 6616745020095024164bf7b31c2f6d0771d1ba3a
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_Settings HEAD:ten2
cd ../../..
echo " "
echo " "
rm -rf five
fi

## vendor/pixelstyle
if [ -e six ]
then
echo -e "$blue// Picking commits of vendor/pixelstyle //$nocol"
cd vendor/pixelstyle
git fetch https://github.com/DerpFest-Sanders/platform_vendor_pixelstyle ten
git cherry-pick 0d0c70bd2f392bdef6ff8b6ef584832932bd01e7
git push -f https://github.com/DerpFest-Sanders/platform_vendor_pixelstyle HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf six
fi

## vendor/aosip
if [ -e seven ]
then
echo -e "$blue// Picking commits of vendor/aosip //$nocol"
cd vendor/aosip
git fetch https://github.com/DerpFest-Sanders/platform_vendor_aosip ten
git cherry-pick 626d2a6278b5b55db8a14e567660c89b75922e92
git push -f https://github.com/DerpFest-Sanders/platform_vendor_aosip HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf seven
fi

## OmniStyle
if [ -e eight ]
then
echo -e "$blue// Picking commits of OmniStyle //$nocol"
cd pac*/apps/OmniStyle
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_OmniStyle ten
git cherry-pick 568431bd327180c0c7a9147a649c0bf6af270b73
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_OmniStyle HEAD:ten2
cd ../../..
echo " "
echo " "
rm -rf eight
fi

# FaceUnlock
if [ -e nine ]
then
echo -e "$blue// Importing Face Unlock //$nocol"
rm -rf external/motorola/faceunlock
cd external
if [ -e motorola ]
then
echo " "
else
mkdir motorola
fi
cd && cp -r faceunlock dp/external/motorola/faceunlock
#git clone https://github.com/PixelExperience/external_motorola_faceunlock -b ten external/motorola/faceunlock
cd dp
cd vendor/aosip
git fetch https://github.com/DerpFest-Sanders/platform_vendor_aosip face
git cherry-pick 300b9fa1bcdca6f4755994922b3205d94d25704b
git push -f https://github.com/DerpFest-Sanders/platform_vendor_aosip HEAD:ten2
cd ../..
cd pac*/apps/Settings
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_Settings face
git cherry-pick 9341795c8b2eb4b292a7f12ccb473c2c47b791e1
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_Settings HEAD:ten2
cd ../../..
cd frameworks/base
git fetch https://github.com/DerpFest-Sanders/platform_frameworks_base face
git cherry-pick 48a251855a7ba1105e0e77412ed8fa3c815e829a
git push -f https://github.com/DerpFest-Sanders/platform_frameworks_base HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf nine
fi

echo " "
echo -e "$cyan// Picked stuffs from DerpFest-Sanders //$nocol"
