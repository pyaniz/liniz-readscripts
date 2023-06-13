#!/bin/bash
apt update && apt install git wget sudo gnupg ffmpeg cmake imagemagick  -y
# Install DLIB
git clone https://github.com/davisking/dlib.git
cd dlib/dlib
mkdir build
cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
# Install PLIB
git clone https://github.com/goodspb/pdlib.git
cd pdlib
phpize
./configure
make
sudo make install

