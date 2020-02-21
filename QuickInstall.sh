# Download this file to where you want to place your installation folder.
# Then, run it with `bash QuickInstall.sh` in the terminal.

# Requirements
sudo apt-get install git make g++ cpanminus -y
sudo apt-get install libsdl-image1.2-dev libsdl-ttf2.0-dev libcrypt-openssl-rsa-perl libcapture-tiny-perl -y
sudo cpanm File::ShareDir

# Files
mkdir REPOS
cd REPOS
git clone https://github.com/DaveAckley/MFM.git
git clone https://github.com/DaveAckley/ULAM.git
git clone https://github.com/DaveAckley/SPLAT.git

# MFM
cd MFM
make
cd ..

# ULAM
cd ULAM
make
cd ..

# SPLAT
cd SPLAT
perl Makefile.PL
sudo make install
cd ..

# Keygen
./MFM/bin/mfzmake keygen `whoami`
./MFM/bin/mfzmake default `whoami`

# Demo
cd SPLAT/demos/FB
make
