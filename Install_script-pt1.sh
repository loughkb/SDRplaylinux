#! /bin/bash
# This script should install and build all needed stuff for
# using the SDRPlay on Ubuntu 16.04 or later.  It must be
# run as root.  
# 
# First we install needed dependancies.

apt-get install git build-essential automake cmake g++ swig
apt-get install libgtk2.0-dev libpulse-dev libpython-dev python-numpy
apt-get install mesa-utils libeglw1-mesa libglw1-mesa-dev
apt-get install freeglut3-dev freeglut3

# Now we'll git the projects we need

git clone https://github.com/jgaeddert/liquid-dsp
wget https://github.com/wxWidgets/wxWidgets/releases/download/v3.1.0/wxWidgets-3.1.0.tar.bz2
tar -xvjf wxWidgets-3.1.0.tar.bz2  
git clone https://github.com/pothosware/SoapySDR.git
git clone https://github.com/pothosware/SoapySDRPlay.git
git clone https://github.com/pothosware/SoapyRemote.git
git clone https://github.com/cjcliffe/CubicSDR.git

# Build liquid-dsp

cd liquid-dsp
./bootstrap.sh
./configure --enable-fftoverride 
make -j4
make install
ldconfig
cd ..

# Build wxwidgets

cd wxWidgets-3.1.0/
mkdir -p ~/Develop/wxWidgets-staticlib
./autogen.sh 
./configure --with-opengl --disable-shared --enable-monolithic --with-libjpeg --with-libtiff --with-libpng --with-zlib --disable-sdltest --enable-unicode --enable-display --enable-propgrid --disable-webkit --disable-webview --disable-webviewwebkit --prefix=`echo ~/Develop/wxWidgets-staticlib` CXXFLAGS="-std=c++0x" --with-libiconv=/usr
make -j4 
make install
cd ..

echo "."
echo "First part of installation done.   Now run the SDRPlay file you"
echo "downloaded from their site.  Be sure to use sudo to run it!"



