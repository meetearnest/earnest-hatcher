#!/usr/bin/env bash

GIT_DIRECTORY=git

cd ~ 
mkdir ${GIT_DIRECTORY}
cd ${GIT_DIRECTORY}
git clone https://github.com/meetearnest/earnest-hatcher.git
cd earnest-hatcher 
./go
