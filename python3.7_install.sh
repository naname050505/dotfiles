#!/bin/sh
curl -O https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
tar xvfz Python-3.7.0.tgz
cd Python-3.7.0/
./configure --prefix=/usr/local/python370 --with-ensurepip
make
sudo make install
