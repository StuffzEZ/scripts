#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
    echo "No argument provided!"
    exit 1
fi

arg1="$1"
arg2="$2"

# Check the value of the argument
case "$1" in
    "sl")
        echo "Running sl with args"
        curl -s "https://raw.githubusercontent.com/StuffzEZ/scripts/refs/heads/main/sl-runner.sh" "$arg2"
        ;;
    "packin")
        echo "Running packin with args"
        curl -s "https://raw.githubusercontent.com/StuffzEZ/scripts/refs/heads/main/package-runner-installer/script.sh" "$arg2"
        ;;
    *)
        echo "Unknown argument: $1"
        exit 2
        ;;
esac
