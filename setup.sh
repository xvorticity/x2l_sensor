#!/bin/bash
cd pico-sdk
git submodule update --init
cd ../
mkdir build
cd build
cmake ..