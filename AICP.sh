#!/bin/bash
today=`date '+%Y_%m_%d__%H_%M_%S'`;
cd /home/shizzle2889/android/AICP # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aicp-p9.0/master.xml # Pull roomservice.xml
repo sync -c -j4 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aicp_tblte-userdebug && make bacon -j32 | tee /home/shared/shizzle2889/logs/aicp-tblte-log-$today.txt # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/tblte/aicp_tblte_p-14*.zip /home/shizzle2889/OUT/AICP/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1F3x_inxEuiZn5X_FD4dUaV79xjtiJDGy * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/AICP/TBLTE/* /home/shared/shizzle2889/builds/aicp_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP # Set Base Directory
lunch aicp_trlte-userdebug && make bacon -j32 | tee /home/shared/shizzle2889/logs/aicp-trlte-log-$today.txt # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/trlte/aicp_trlte_p-14*.zip /home/shizzle2889/OUT/AICP/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1pVxrwCbj_ife-LUhqoICVOaeoVZOJZkG * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/AICP/TRLTE/* /home/shared/shizzle2889/builds/aicp_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP # Set Base Directory
lunch aicp_trlteduos-userdebug && make bacon -j32 | tee /home/shared/shizzle2889/logs/aicp-trlteduos-log-$today.txt # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/trlteduos/aicp_trlteduos_p-14*.zip /home/shizzle2889/OUT/AICP/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1HEOMlxXJ-VqURvFs-8bm4PuLX7Zq_CTA * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/AICP/TRLTEDuos/* /home/shared/shizzle2889/builds/aicp_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP && make clean # Clean OUT_DIR
