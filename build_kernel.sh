#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/teflanzy/Desktop/android/kernel/toolchains/uber-arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8974_sec_viennalteeur_defconfig msm8974_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
