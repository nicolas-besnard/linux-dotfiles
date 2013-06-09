#!/bin/sh
# sudo apt-get update
# sudo apt-get install build-essential git cmake xorg-dev libgl1-mesa-dev libglu-dev
#sudo apt-get install libpng-dev libcurl4-dev libfreetype6-dev libjpeg-dev libvorbis-dev libopenal-dev libphysfs-dev libgtk2.0-dev libasound-dev libpulse-dev libflac-dev libdumb1-dev
# git clone git://git.code.sf.net/p/alleg/allegro
# cd allegro
# git checkout 5.0
# mkdir build
cd allegro
cd build
sudo cmake -DCMAKE_INSTALL_PREFIX=/usr ..
sudo make
sudo make install