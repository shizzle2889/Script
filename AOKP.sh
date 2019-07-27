cd /home/shizzle2889/android/AOKP # Set Base Directory
wget -O .repo/local_manifests/roomservice.xml https://raw.githubusercontent.com/triplr-dev/local_manifests/aokp-pie/master.xml # Pull roomservice.xml
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags # Sync Repository
. build/envsetup.sh # Set build
lunch aokp_tblte-userdebug && make rainbowfarts -j32 # Make TBLTE
mv /home/shizzle2889/OUT_DIR/AOKP/target/product/tblte/aokp_tblte_pie*.zip /home/shizzle2889/OUT/AOKP/TBLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TBLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1FCt7voGQZrN4uMKlbd98NVUlMTs1LVlf * && s=0 && break || s=$?; done; (exit $s) # Upload TBLTE
mv /home/shizzle2889/OUT/AOKP/TBLTE/* /home/shared/shizzle2889/builds/aokp_tblte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP # Set Base Directory
lunch aokp_trlte-userdebug && make rainbowfarts -j32 # Make TRLTE
mv /home/shizzle2889/OUT_DIR/AOKP/target/product/trlte/aokp_trlte_pie*.zip /home/shizzle2889/OUT/AOKP/TRLTE/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TRLTE/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1-eZc6usw6V-tuSI93wjqlWjiqrIugc4T * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTE
mv /home/shizzle2889/OUT/AOKP/TRLTE/* /home/shared/shizzle2889/builds/aokp_trlte.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP # Set Base Directory
lunch aokp_trlteduos-userdebug && make rainbowfarts -j32 # Make TRLTEDuos
mv /home/shizzle2889/OUT_DIR/AOKP/target/product/trlteduos/aokp_trlteduos_pie*.zip /home/shizzle2889/OUT/AOKP/TRLTEDuos/ # Move for Upload
cd /home/shizzle2889/OUT/AOKP/TRLTEDuos/ # Change to OUT directory and Upload
for i in $(seq 1 50); do [ $i -gt 1 ] ; gdrive upload --parent 1RhIeiRmswjVRB4YZ7YSLOzitY5TLtuRm * && s=0 && break || s=$?; done; (exit $s) # Upload TRLTEDuos
mv /home/shizzle2889/OUT/AOKP/TRLTEDuos/* /home/shared/shizzle2889/builds/aokp_trlteduos.zip # Move build out of OUT directory
cd /home/shizzle2889/android/AOKP && make clean # Clean OUT_DIR
