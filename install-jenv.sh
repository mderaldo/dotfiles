#!/bin/bash

echo "Installing jenv"
if ! comand_loc="$(type -p jenv)" > /dev/null; then
    brew install jenv
else 
    echo " jenv already installed"
fi
