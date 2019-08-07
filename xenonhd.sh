cd /home/shizzle2889/android/xenonhd # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/xenonhd-p/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
brunch tblte # Make TBLTE
mv /home/shizzle2889/OUT_DIR/xenonhd/target/product/tblte/XenonHD-*-Unofficial-tblte.zip /home/shizzle2889/OUT/xenonhd/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1WyaI6sou6k92cjwXD9z7cFD2Y27cGXk8 * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/xenonhd/TBLTE/* /home/shared/shizzle2889/builds/xenonhd_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlte # Make TRLTE
mv /home/shizzle2889/OUT_DIR/xenonhd/target/product/trlte/XenonHD-*-Unofficial-trlte.zip /home/shizzle2889/OUT/xenonhd/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1ifT2ys770gbGmwpX501qPAlMe15SUaxd * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/xenonhd/TRLTE/* /home/shared/shizzle2889/builds/xenonhd_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd # Set Base Directory
brunch trlteduos # Make TRLTEDuos
mv /home/shizzle2889/OUT_DIR/xenonhd/target/product/trlteduos/XenonHD-*-Unofficial-trlteduos.zip /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/xenonhd/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 13cjqAIUUZ3lTcarpXLEU3mIKG1NOacTC * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/xenonhd/TRLTEDuos/* /home/shared/shizzle2889/builds/xenonhd_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/xenonhd && make clean # Clean OUT_DIR
