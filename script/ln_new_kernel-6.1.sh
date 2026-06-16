#!/usr/bin/env bash

cd ../kernel/linux-6.1/
ln -s ../bsp/ .

cd arch/arm/configs/
ln -s ../../../../config/linux-6.1/uvision_defconfig .

cd -
cd arch/arm/boot/dts/
ln -s ../../../../../config/dts/linux-6.1/sun8iw21p1.dtsi .
ln -s ../../../../../config/dts/linux-6.1/sun8i-v851s-uvision.dts .

cd - 
cd ../../script/


