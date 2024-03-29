#!/bin/bash

echo 'Starting Cloning repos for starqltechn'
echo 'Cloning Kernel tree [1/6]'
# Kernel for sdm845
if [ ! -d "kernel/samsung/sdm845" ]; then
    rm -rf kernel/samsung/sdm845
    git clone https://github.com/tamanegi-mogumogu/android_kernel_samsung_sdm845 -b thirteen-new kernel/samsung/sdm845
fi

echo 'Cloning Common Tree [2/6]'
# Common tree for sdm845-common
rm -rf device/samsung/sdm845-common
git clone https://github.com/tqmane/device_samsung_sdm845-common -b fourteen device/samsung/sdm845-common

echo 'Cloning Device Tree [3/6]'
# Device tree for starqltechn
rm -rf device/samsung/starqltechn
git clone https://github.com/tqmane/device_samsung_starqltedcm -b thirteen device/samsung/starqltedcm

echo 'Cloning Vendor Trees [4/6]'
rm -rf vendor/samsung/sdm845-common
git clone https://github.com/tamanegi-mogumogu/android_vendor_samsung_sdm845-common -b thirteen vendor/samsung/sdm845-common

echo 'Cloning Hardware Samsung [5/6]'
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/PixelExperience/hardware_samsung.git -b thirteen hardware/samsung
mv nfc hardware/samsung
