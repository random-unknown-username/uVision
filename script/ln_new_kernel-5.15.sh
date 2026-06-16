#!/usr/bin/env bash

cd ../kernel/linux-5.15/
ln -s ../bsp/ .

cd arch/arm/configs/
ln -s ../../../../config/linux-5.15/uvision_defconfig .

cd -
cd arch/arm/boot/dts/
ln -s ../../../../../config/dts/linux-5.15/sun8iw21p1.dtsi .
ln -s ../../../../../config/dts/linux-5.15/sun8i-v851s-uvision.dts .

cd -
cd ../../script/


