#!/usr/bin/env bash

GIT_DIRECTORY=${HOME}/git

cd ~
echo "Attempting to install xcode-select..."
xcode-select --install
echo "Attempting to install Mac OS SDK Headers (needed for pyenv later)"
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
mkdir ${GIT_DIRECTORY}
cd ${GIT_DIRECTORY}
git clone https://github.com/meetearnest/earnest-hatcher.git
cd earnest-hatcher 
./go
