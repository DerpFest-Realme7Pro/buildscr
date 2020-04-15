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
read -e -p "Select anyone from above " ans;

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
git cherry-pick 84aa0d0ab3db5e76acec767a6f9facb5e67b4ff8
git cherry-pick 3d9ac15af665c4f8cf5fab12e49105d60886e432
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
git cherry-pick c6aaf959e5bc0fc8331311f95a9259f39b8f6964
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
git cherry-pick 87ddd7f9e38a148669d79bea13b86b5a791a654d
git cherry-pick e623f85704f2c0067dd9959e4767a2a606250db2
git cherry-pick 37785210ad3cbad257168253ae6e82945a903fab
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
git cherry-pick 185d989450e8a5da0ca164e3e08f3bdce5fc0d75
git cherry-pick 5a3a6ed13cf69b5efd177f5b5baa56245e81485c
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
git cherry-pick 3f1d31a4219390b9b09f8fab33308c89e0db4d0b
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
git clone https://github.com/PixelExperience/external_motorola_faceunlock -b ten external/motorola/faceunlock
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
git cherry-pick 1e25b95134175d3d730a538a3bd3ea64dbe2f929
git cherry-pick f062a566f0be54902c4c97b30b97d4001bcac9b9
git cherry-pick fb894143c2266ce15259a69f62851b289e65955a
git push -f https://github.com/DerpFest-Sanders/platform_frameworks_base HEAD:ten2
cd ../..
echo " "
echo " "
rm -rf nine
fi

echo " "
echo -e "$cyan// Picked stuffs from DerpFest-Sanders //$nocol"
