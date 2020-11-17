#!/bin/bash
sudo apt-get install mercurial

hg clone https://hg.libsdl.org/SDL SDL

hg clone https://hg.libsdl.org/SDL SDL
cd SDL
mkdir build
cd build
../configure
make
sudo make install