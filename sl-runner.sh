#!/bin/bash

PACKAGE_NAME=sl

if dpkg -l | grep -q "^ii  $PACKAGE_NAME"; then
    echo "$PACKAGE_NAME is installed - Running Now."
    sl -alFe
else
    echo "$PACKAGE_NAME is not installed - Installing Now."
    sudo apt install sl
    sl -alFe
fi
