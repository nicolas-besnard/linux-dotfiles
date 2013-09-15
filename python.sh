#python
wget -nc http://python.org/ftp/python/3.3.2/Python-3.3.2.tar.bz2 --directory-prefix=/tmp
cd /tmp
tar xf Python-3.3.2.tar.bz2
cd Python-3.3.2
./configure --prefix=/usr/local
make -j4 && sudo make -j4 altinstall

#pip
curl -O http://python-distribute.org/distribute_setup.py
sudo /usr/local/bin/python3.3 distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo /usr/local/bin/python3.3 get-pip.py