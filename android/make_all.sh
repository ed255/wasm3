#!/bin/sh

set -ex

NDK_HOME="/mnt/data/dev/app/Android/Sdk/ndk-bundle"

for arch in arm64-v8a armeabi-v7a x86 x86_64; do
# for arch in x86; do
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=${NDK_HOME}/build/cmake/android.toolchain.cmake \
        -DANDROID_PLATFORM=android-29 \
        -DANDROID_NATIVE_API_LEVEL=20 \
        -DANDROID_ABI=$arch .
    make clean
    make
    mkdir -p linux/$arch
    cp libm3.a linux/$arch
done
