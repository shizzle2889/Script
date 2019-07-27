cd /home/shizzle2889/android/AEX # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aex-9.x/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aosp_tblte-userdebug && make aex -j32 # Make TBLTE
mv /home/OUT_DIR/AEX/target/product/tblte/AospExtended-v6.6-tblte-*.zip /home/shizzle2889/OUT/AEX/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AEX/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1WyaI6sou6k92cjwXD9z7cFD2Y27cGXk8 * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/AEX/TBLTE/* /home/shared/shizzle2889/builds/aex_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AEX # Set Base Directory
lunch aosp_trlte-userdebug && make -j32 aex # Make TRLTE
mv /home/OUT_DIR/AEX/target/product/trlte/AospExtended-v6.6-trlte-*.zip /home/shizzle2889/OUT/AEX/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AEX/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1ifT2ys770gbGmwpX501qPAlMe15SUaxd * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/AEX/TRLTE/* /home/shared/shizzle2889/builds/aex_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AEX # Set Base Directory
lunch aosp_trlteduos-userdebug && make -j32 aex # Make TRLTEDuos
mv /home/OUT_DIR/AEX/target/product/trlteduos/AospExtended-v6.6-trlteduos-*.zip /home/shizzle2889/OUT/AEX/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/AEX/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 13cjqAIUUZ3lTcarpXLEU3mIKG1NOacTC * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/AEX/TRLTEDuos/* /home/shared/shizzle2889/builds/aex_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AEX && make clean # Clean OUT_DIR
