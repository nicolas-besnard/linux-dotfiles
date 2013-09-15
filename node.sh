#!/bin/sh
curl https://npmjs.org/install.sh | sudo sh
git clone https://github.com/joyent/node.git /tmp/node
cd /tmp/node
./configure
make -j8
sudo make install
#sudo apt-get install python-software-properties python g++ make
#sudo add-apt-repository ppa:chris-lea/node.js
#sudo apt-get update
#sudo apt-get install nodejs
sudo npm install -g coffee-script