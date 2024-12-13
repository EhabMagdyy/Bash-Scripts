#!/bin/bash

# Check if speedtest-cli is installed
if ! command -v speedtest-cli &> /dev/null; then
    echo "speedtest-cli is not installed. Installing it now..."
    sudo apt update
    sudo apt install -y speedtest-cli
fi

# Run the speed test
echo "Running speed test..."
speedtest-cli