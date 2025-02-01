#!/bin/bash

# This script checks if a package is installed, installs it if not, and then runs it with arguments.

# Get the package name and package arguments from the command line
PACKAGE_NAME=$1
shift  # Shift arguments so the rest are package arguments
PACKAGE_ARGS="$@"

# Function to install the package if not already installed
install_package() {
    echo "$PACKAGE_NAME is not installed. Installing..."
    sudo apt update && sudo apt install -y "$PACKAGE_NAME"
}

# Check if the package is installed
if dpkg -l | grep -q "^ii  $PACKAGE_NAME"; then
    echo "$PACKAGE_NAME is already installed."
else
    install_package
fi

# Run the package with the provided arguments
echo "Running $PACKAGE_NAME with arguments: $PACKAGE_ARGS"
$PACKAGE_NAME $PACKAGE_ARGS
