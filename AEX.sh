cd /home/shizzle/android/AEX # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aex-9.x/master.xml # Pull roomservice.xml
repo sync -c --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aosp_tblte-userdebug && make aex # Make TBLTE
mv /home/OUT_DIR/AEX/target/product/tblte/AospExtended-v6.6-tblte-*.zip /home/shizzle/OUT/AEX/TBLTE/ # Move for Upload
lunch aosp_trlte-userdebug && make aex # Make TRLTE
mv /home/OUT_DIR/AEX/target/product/trlte/AospExtended-v6.6-trlte-*.zip /home/shizzle/OUT/AEX/TRLTE/ # Move for Upload
lunch aosp_trlteduos-userdebug && make aex # Make TRLTEDuos
mv /home/OUT_DIR/AEX/target/product/trlteduos/AospExtended-v6.6-trlteduos-*.zip /home/shizzle/OUT/AEX/TRLTEDuos/ # Move for Upload
cd /home/shizzle/OUT/AEX/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1WyaI6sou6k92cjwXD9z7cFD2Y27cGXk8 * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle/OUT/AEX/TBLTE/* /home/shizzle/builds/aex_tblte.zip # Move build out of OUT directory
cd /home/shizzle/OUT/AEX/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1ifT2ys770gbGmwpX501qPAlMe15SUaxd * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle/OUT/AEX/TRLTE/* /home/shizzle/builds/aex_trlte.zip # Move build out of OUT directory
cd /home/shizzle/OUT/AEX/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 13cjqAIUUZ3lTcarpXLEU3mIKG1NOacTC * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle/OUT/AEX/TRLTEDuos/* /home/shizzle/builds/aex_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle/android/AEX && make clean # Clean OUT_DIR