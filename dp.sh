#!/bin/bash

# Abort on errors
set -e

BUILD_START=$(date +"%s")
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'


# Doing Sanders-ify


## fw/base
echo -e "$blue// Picking commits of frameworks/base //$nocol"
cd frameworks/base
git fetch https://github.com/DerpFest-Sanders/platform_frameworks_base ten
git cherry-pick b4b044ddf423bcf0f9780cc3ae885e95dc81cede
git push -f https://github.com/DerpFest-Sanders/platform_frameworks_base HEAD:ten2
cd ../..
echo " "
echo " "


## DerpQuest
echo -e "$blue// Picking commits of DerpQuest //$nocol"
cd pac*/apps/DerpQuest
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_DerpQuest ten
git cherry-pick a1cd7e0e9f20247e494763b742daa1966d6c4f02
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_DerpQuest HEAD:ten2
cd ../../..
echo " "
echo " "


## build/make
echo -e "$blue// Picking commits of build //$nocol"
cd build/make
git fetch https://github.com/DerpFest-Sanders/platform_build mine
git cherry-pick fea68116eb2232e376d6a7d90af177b1f6bc7f0f
git push -f https://github.com/DerpFest-Sanders/platform_build HEAD:ten2
cd ../..
echo " "
echo " "


## vendor/overlay
echo -e "$blue// Picking commits of vendor/overlay //$nocol"
cd vendor/overlay
git fetch https://github.com/DerpFest-Sanders/platform_vendor_overlay ten
git cherry-pick 07cc4691d1f8e18bb48e256caa1da444b3c0ccb7
git push -f https://github.com/DerpFest-Sanders/platform_vendor_overlay HEAD:ten2
cd ../..
echo " "
echo " "


## Settings
echo -e "$blue// Picking commits of Settings //$nocol"
cd pac*/apps/Settings
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_Settings ten
git cherry-pick 185d989450e8a5da0ca164e3e08f3bdce5fc0d75
git cherry-pick 5a3a6ed13cf69b5efd177f5b5baa56245e81485c
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_Settings HEAD:ten2
cd ../../..
echo " "
echo " "


## vendor/pixelstyle
echo -e "$blue// Picking commits of vendor/pixelstyle //$nocol"
cd vendor/pixelstyle
git fetch https://github.com/DerpFest-Sanders/platform_vendor_pixelstyle ten
git cherry-pick 92faa55d29ccb29b147cab1e0a42b99b2929b002
git push -f https://github.com/DerpFest-Sanders/platform_vendor_pixelstyle HEAD:ten2
cd ../..
echo " "
echo " "


## vendor/aosip
echo -e "$blue// Picking commits of vendor/aosip //$nocol"
cd vendor/aosip
git fetch https://github.com/DerpFest-Sanders/platform_vendor_aosip ten
git cherry-pick da46abff6be7fdba01a5568d572a576a8f428fab
git push -f https://github.com/DerpFest-Sanders/platform_vendor_aosip HEAD:ten2
cd ../..
echo " "
echo " "


## OmniStyle
echo -e "$blue// Picking commits of OmniStyle //$nocol"
cd pac*/apps/OmniStyle
git fetch https://github.com/DerpFest-Sanders/platform_packages_apps_OmniStyle ten
git cherry-pick 568431bd327180c0c7a9147a649c0bf6af270b73
git push -f https://github.com/DerpFest-Sanders/platform_packages_apps_OmniStyle HEAD:ten2
cd ../../..
echo " "
echo " "



echo " "
echo "$yellow// Picked stuffs from DerpFest-Sanders in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds //$nocol"