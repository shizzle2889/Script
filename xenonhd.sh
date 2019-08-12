#!/bin/bash
today=`date '+%Y_%m_%d__%H_%M_%S'`;
cd /home/shizzle2889/android/xenonhd # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/xenonhd-p/master.xml # Pull roomservice.xml
repo sync -c -j4 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
brunch tblte | tee /home/shared/shizzle2889/logs/xenon-tblte-log-$today.txt # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/tblte/XenonHD-*-Unofficial-tblte.zip /home/shizzle2889/OUT/xenonhd/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-Km3AhrEeF3VuQivwXuI-A8_oeYgZT6g * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/xenonhd/TBLTE/* /home/shared/shizzle2889/builds/xenonhd_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlte | tee /home/shared/shizzle2889/logs/xenon-trlte-log-$today.txt # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/trlte/XenonHD-*-Unofficial-trlte.zip /home/shizzle2889/OUT/xenonhd/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-6_x-vKA73VnL4H3NN_LJYIfJomfTsNL * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/xenonhd/TRLTE/* /home/shared/shizzle2889/builds/xenonhd_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlteduos | tee /home/shared/shizzle2889/logs/xenon-trlteduos-log-$today.txt # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/trlteduos/XenonHD-*-Unofficial-trlteduos.zip /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-KsaBsn0lUV2Cy_nr4ZzaBO022xXcezJ * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/xenonhd/TRLTEDuos/* /home/shared/shizzle2889/builds/xenonhd_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd && make clean # Clean OUT_DIR
