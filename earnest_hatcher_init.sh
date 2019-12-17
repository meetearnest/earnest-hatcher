#!/usr/bin/env bash

GIT_DIRECTORY=${HOME}/git

cd ~
echo "Attempting to install xcode-select..."
xcode-select --install
mkdir ${GIT_DIRECTORY}
cd ${GIT_DIRECTORY}
git clone https://github.com/meetearnest/earnest-hatcher.git
cd earnest-hatcher 
./go
