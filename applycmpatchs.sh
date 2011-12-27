#!/bin/bash

source repopath

#Overscroll Color (1/3) http://review.cyanogenmod.com/7148
cd $REPOPATH/packages/apps/CMParts
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_packages_apps_CMParts refs/changes/48/7148/9 && git cherry-pick FETCH_HEAD
#Overscroll Color (2/3) http://review.cyanogenmod.com/7149
cd $REPOPATH/frameworks/base/
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_frameworks_base refs/changes/49/7149/8 && git cherry-pick FETCH_HEAD
#Overscroll Color (2/3) http://review.cyanogenmod.com/7166
cd $REPOPATH/vendor/tmobile/apps/ThemeChooser/
git fetch http://review.cyanogenmod.com/p/CyanogenMod/themes-platform-vendor-tmobile-apps-ThemeChooser refs/changes/66/7166/3 && git cherry-pick FETCH_HEAD

#Fix hijack execution and logging (hijack logging flag must be uncommented in the BoardConfig.mk line 100) http://review.cyanogenmod.com/#change,7279
cd $REPOPATH/device/motorola/droid2
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_motorola_droid2 refs/changes/79/7279/1 && git cherry-pick FETCH_HEAD
cd $REPOPATH/device/motorola/droid2we
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_motorola_droid2 refs/changes/79/7279/1 && git cherry-pick FETCH_HEAD
cd $REPOPATH/device/motorola/shadow
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_device_motorola_droid2 refs/changes/79/7279/1 && git cherry-pick FETCH_HEAD


#allow wifi scan policy to be user configurable (1/3) http://review.cyanogenmod.com/6911
cd $REPOPATH/packages/apps/CMParts/
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_packages_apps_CMParts refs/changes/11/6911/7 && git cherry-pick FETCH_HEAD
#allow wifi scan policy to be user configurable (2/3) http://review.cyanogenmod.com/7280
cd $REPOPATH/external/wpa_supplicant
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_external_wpa_supplicant refs/changes/80/7280/2 && git cherry-pick FETCH_HEAD
#allow wifi scan policy to be user configurable (3/3) http://review.cyanogenmod.com/7281
cd $REPOPATH/external/wpa_supplicant_6
git fetch http://review.cyanogenmod.com/p/CyanogenMod/android_external_wpa_supplicant_6 refs/changes/81/7281/2 && git cherry-pick FETCH_HEAD





