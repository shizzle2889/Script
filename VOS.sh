#!/bin/bash
today=`date '+%Y_%m_%d__%H_%M_%S'`;
cd /home/shizzle2889/android/VOS # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/viper-pie/master.xml # Pull roomservice.xml
repo sync -c -j4 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch viper_tblte-userdebug && make poison -j32 | tee /home/shared/shizzle2889/logs/vos-tblte-log-$today.txt # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/tblte/Viper-tblte-*.zip /home/shizzle2889/OUT/VOS/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1izQNzbuG69IfO-fnandZVF7RhxFOYmpN * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/VOS/TBLTE/* /home/shared/shizzle2889/builds/viper_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS # Set Base Directory
lunch viper_trlte-userdebug && make poison -j32 | tee /home/shared/shizzle2889/logs/vos-trlte-log-$today.txt # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/trlte/Viper-trlte-*.zip /home/shizzle2889/OUT/VOS/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1GV5UUXWlwEEB8ItaXzFIB1x9ETLb2OU2 * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/VOS/TRLTE/* /home/shared/shizzle2889/builds/viper_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS # Set Base Directory
lunch viper_trlteduos-userdebug && make poison -j32 | tee /home/shared/shizzle2889/logs/vos-trlteduos-log-$today.txt # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/trlteduos/Viper-trlteduos-*.zip /home/shizzle2889/OUT/VOS/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1q4CL-9zU4WME7Lmj2kx7J84O_3-4DC_n * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/VOS/TRLTEDuos/* /home/shared/shizzle2889/builds/viper_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS && make clean # Clean OUT_DIR
