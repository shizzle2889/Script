cd /home/shizzle2889/android/AICP # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aicp-p9.0/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aicp_tblte-userdebug && make bacon -j32 # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/tblte/aicp_tblte_p-14*.zip /home/shizzle2889/OUT/AICP/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1F3x_inxEuiZn5X_FD4dUaV79xjtiJDGy * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/AICP/TBLTE/* /home/shared/shizzle2889/builds/aicp_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP # Set Base Directory
lunch aicp_trlte-userdebug && make bacon -j32 # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/trlte/aicp_trlte_p-14*.zip /home/shizzle2889/OUT/AICP/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1pVxrwCbj_ife-LUhqoICVOaeoVZOJZkG * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/AICP/TRLTE/* /home/shared/shizzle2889/builds/aicp_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP # Set Base Directory
lunch aicp_trlteduos-userdebug && make bacon -j32 # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/AICP/target/product/trlteduos/aicp_trlteduos_p-14*.zip /home/shizzle2889/OUT/AICP/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/AICP/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1HEOMlxXJ-VqURvFs-8bm4PuLX7Zq_CTA * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/AICP/TRLTEDuos/* /home/shared/shizzle2889/builds/aicp_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AICP && make clean # Clean OUT_DIR
cd /home/shizzle2889/android/AOKP # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aokp-pie/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aokp_tblte-userdebug && make rainbowfarts -j32 # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/AOKP/target/product/tblte/aokp_tblte_pie*.zip /home/shizzle2889/OUT/AOKP/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1FCt7voGQZrN4uMKlbd98NVUlMTs1LVlf * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/AOKP/TBLTE/* /home/shared/shizzle2889/builds/aokp_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP # Set Base Directory
lunch aokp_trlte-userdebug && make rainbowfarts -j32 # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/AOKP/target/product/trlte/aokp_trlte_pie*.zip /home/shizzle2889/OUT/AOKP/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-eZc6usw6V-tuSI93wjqlWjiqrIugc4T * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/AOKP/TRLTE/* /home/shared/shizzle2889/builds/aokp_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP # Set Base Directory
lunch aokp_trlteduos-userdebug && make rainbowfarts -j32 # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/AOKP/target/product/trlteduos/aokp_trlteduos_pie*.zip /home/shizzle2889/OUT/AOKP/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1RhIeiRmswjVRB4YZ7YSLOzitY5TLtuRm * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/AOKP/TRLTEDuos/* /home/shared/shizzle2889/builds/aokp_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP && make clean # Clean OUT_DIR
cd /home/shizzle2889/android/VOS # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/viper-pie/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch viper_tblte-userdebug && make poison -j32 # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/tblte/Viper-tblte-*.zip /home/shizzle2889/OUT/VOS/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1izQNzbuG69IfO-fnandZVF7RhxFOYmpN * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/VOS/TBLTE/* /home/shared/shizzle2889/builds/viper_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS # Set Base Directory
lunch viper_trlte-userdebug && make poison -j32 # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/trlte/Viper-trlte-*.zip /home/shizzle2889/OUT/VOS/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1GV5UUXWlwEEB8ItaXzFIB1x9ETLb2OU2 * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/VOS/TRLTE/* /home/shared/shizzle2889/builds/viper_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS # Set Base Directory
lunch viper_trlteduos-userdebug && make poison -j32 # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/VOS/target/product/trlteduos/Viper-trlteduos-*.zip /home/shizzle2889/OUT/VOS/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/VOS/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1q4CL-9zU4WME7Lmj2kx7J84O_3-4DC_n * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/VOS/TRLTEDuos/* /home/shared/shizzle2889/builds/viper_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/VOS && make clean # Clean OUT_DIR
cd /home/shizzle2889/android/xenonhd # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/xenonhd-p/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
brunch tblte # Make TBLTE
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/tblte/XenonHD-*-Unofficial-tblte.zip /home/shizzle2889/OUT/xenonhd/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-Km3AhrEeF3VuQivwXuI-A8_oeYgZT6g * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/xenonhd/TBLTE/* /home/shared/shizzle2889/builds/xenonhd_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlte # Make TRLTE
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/trlte/XenonHD-*-Unofficial-trlte.zip /home/shizzle2889/OUT/xenonhd/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-6_x-vKA73VnL4H3NN_LJYIfJomfTsNL * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/xenonhd/TRLTE/* /home/shared/shizzle2889/builds/xenonhd_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlteduos # Make TRLTEDuos
mv /home/shared/OUT_DIR/shizzle2889/xenonhd/target/product/trlteduos/XenonHD-*-Unofficial-trlteduos.zip /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-KsaBsn0lUV2Cy_nr4ZzaBO022xXcezJ * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/xenonhd/TRLTEDuos/* /home/shared/shizzle2889/builds/xenonhd_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd && make clean # Clean OUT_DIR
