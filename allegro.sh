sudo apt-get install libgl1-mesa-dev libglu1-mesa-dev cmake build-essential make &&
sudo apt-get install -y cmake g++ freeglut3-dev libxcursor-dev libpng12-dev libjpeg-dev libfreetype6-dev libgtk2.0-dev libasound2-dev libpulse-dev libopenal-dev libflac-dev libdumb1-dev libvorbis-dev libphysfs-dev &&
git clone git://git.code.sf.net/p/alleg/allegro &&
cd allegro &&
git checkout 5.0 &&
mkdir build; cd build &&
cmake -DCMAKE_INSTALL_PREFIX=/usr .. &&
make -j8 &&
sudo make install