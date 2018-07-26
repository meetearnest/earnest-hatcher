#!/bin/bash

echo "Please enter the setup user's Github password, it can be found in 1Password"
read SETUP_USER_GITHUB_PASSWORD

./bootstrap.sh

python hatch.py $SETUP_USER_GITHUB_PASSWORD
