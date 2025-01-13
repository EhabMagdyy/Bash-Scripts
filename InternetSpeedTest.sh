#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Check if speedtest-cli is installed
if ! command_exists speedtest-cli; then
    echo -e "${YELLOW}speedtest-cli is not installed. Installing it now...${RESET}"
    sudo apt update && sudo apt install -y speedtest-cli
fi

# Run the speed test and handle errors
echo -e "${CYAN}Running speed test...${RESET}"
if speedtest-cli; then
    echo -e "${GREEN}Speed test completed successfully.${RESET}"
else
    echo -e "${RED}Error: Failed to run speedtest-cli. Please check your internet connection or installation.${RESET}"
    exit 1
fi