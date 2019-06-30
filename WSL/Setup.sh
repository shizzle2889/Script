cd /home/shizzle
mkdir ~/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
ccache -M 250G
echo 'export ANDROID_COMPILE_WITH_JACK=false' >> ~/.bashrc
echo 'export LANG=C' >> ~/.bashrc
echo 'export PATH=~/bin:$PATH' >> ~/.bashrc
echo 'export USE_CCACHE=1' >> ~/.bashrc
. ~/.bashrc
mkdir ~/.ccache
mkdir ~/android
mkdir ~/OUT_DIR
mkdir ~/OUT
mkdir ~/builds
git config --global user.email "c.s.murphy2889@gmail.com"
git config --global user.name "Shizzle2889"
cd ~/android
mkdir AICP && mkdir AOKP && mkdir VOS
cd AICP
repo init --depth=1 -u https://github.com/AICP/platform_manifest.git -b p9.0
mkdir -p .repo/local_manifests
cd ../AOKP
repo init --depth=1 -u https://github.com/AOKP/platform_manifest.git -b pie
mkdir -p .repo/local_manifests
cd ../VOS
repo init --depth=1 -u https://github.com/ViperOS/viper_manifest.git -b pie
mkdir -p .repo/local_manifests
cd ../../OUT
mkdir AICP && mkdir AOKP && mkdir VOS
cd AICP
mkdir TBLTE && mkdir TRLTE && mkdir TRLTEDuos
cd ../AOKP
mkdir TBLTE && mkdir TRLTE && mkdir TRLTEDuos
cd ../VOS
mkdir TBLTE && mkdir TRLTE && mkdir TRLTEDuos
cd ../../