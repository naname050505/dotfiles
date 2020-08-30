#!/bin/sh
sudo apt -yV install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7

curl -O https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
tar xvfz Python-3.7.0.tgz
cd Python-3.7.0/
./configure --prefix=/usr/local/python370 --with-ensurepip
make
sudo make install
