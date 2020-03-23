#!/bin/sh

case $1 in
"android-arm64")
    # Android
    cmake .. \
      -DCMAKE_SYSTEM_NAME=Android \
      -DCMAKE_SYSTEM_VERSION=21 \
      -DCMAKE_ANDROID_ARCH_ABI=arm64-v8a \
      -DCMAKE_ANDROID_NDK=/mnt/data/dev/app/Android/Sdk/ndk-bundle \
      -DCMAKE_ANDROID_STL_TYPE=gnustl_static
    ;;
"android-armeabi-v7a")
    # Android
    cmake .. \
      -DCMAKE_SYSTEM_NAME=Android \
      -DCMAKE_SYSTEM_VERSION=21 \
      -DCMAKE_ANDROID_ARCH_ABI=armeabi-v7a \
      -DCMAKE_ANDROID_NDK=/mnt/data/dev/app/Android/Sdk/ndk-bundle \
      -DCMAKE_ANDROID_STL_TYPE=gnustl_static
    ;;
"aarch64")
    # aarch64
    cmake .. \
        -DCMAKE_SYSTEM_PROCESSOR=aarc64 \
        -DCMAKE_C_COMPILER=aarch64-linux-gnu-gcc
    ;;
*)
    echo "no platform selected"
    exit 1
    ;;
esac

