#!/usr/bin/env bash
# Node setup

set -ex

 

# Set build number



echo "build id" 

echo $APPCENTER_BUILD_ID



echo "build gradle"

cat build.gradle



ANDROID_MANIFEST_FILE=$APPCENTER_SOURCE_DIRECTORY/app/src/main/AndroidManifest.xml



echo "manifest"

cat ANDROID_MANIFEST_FILE







if [ -e "$ANDROID_MANIFEST_FILE" ]



then



    echo "Updating version name to 2.0.58 in AndroidManifest.xml"



    sed -i '' 's/versionName="[0-9.]*"/versionName="'2.0.58'"/' $ANDROID_MANIFEST_FILE



    sed -i '' 's/versionCode="[0-9.]*"/versionCode="'20058'"/' $ANDROID_MANIFEST_FILE



    echo "new manifest:"



    cat $ANDROID_MANIFEST_FILE



fi



echo "new build id" 

echo $APPCENTER_BUILD_ID
