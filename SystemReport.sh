#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Colors
BOLD_BLUE="\e[1;34m"
BOLD_RED="\e[1;31m"
RESET="\e[0m"

# Print system information
echo -e "${BOLD_BLUE}System Information:${RESET}"
echo "------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Operating System: $(uname -o)"
if command_exists lsb_release; then
    echo "Distribution: $(lsb_release -ds)"
else
    echo -e "${BOLD_RED}Distribution: Unable to determine (lsb_release not installed)${RESET}"
fi
echo "CPU Architecture: $(uname -m)"
echo ""

# Print CPU information
echo -e "${BOLD_BLUE}CPU Information:${RESET}"
echo "----------------"
echo "CPU Model: $(cat /proc/cpuinfo | grep 'model name' | head -n 1 | cut -d ':' -f 2- | xargs)"
echo "CPU Cores: $(cat /proc/cpuinfo | grep 'cpu cores' | head -n 1 | cut -d ':' -f 2- | xargs)"
echo "CPU Threads: $(cat /proc/cpuinfo | grep 'siblings' | head -n 1 | cut -d ':' -f 2- | xargs)"
echo ""

# Print memory information
echo -e "${BOLD_BLUE}Memory Information:${RESET}"
echo "-------------------"
echo "Total Memory: $(free -h | grep 'Mem:' | awk '{print $2}')"
echo "Used Memory: $(free -h | grep 'Mem:' | awk '{print $3}')"
echo "Free Memory: $(free -h | grep 'Mem:' | awk '{print $4}')"
echo ""

# Print disk space information
echo -e "${BOLD_BLUE}Disk Space Information:${RESET}"
echo "-----------------------"
df -h --output=source,size,used,avail,pcent | sed '1s/^/Filesystem Size Used Available Use%/'
echo ""

# Print network information
echo -e "${BOLD_BLUE}Network Information:${RESET}"
echo "---------------------"
echo "IP Address: $(hostname -I | awk '{print $1}')"
echo "Default Gateway: $(ip route | grep default | awk '{print $3}')"
echo "DNS Servers: $(cat /etc/resolv.conf | grep nameserver | awk '{print $2}' | xargs)"
echo ""

# Print GPU information (if available)
if command_exists lspci; then
    echo -e "${BOLD_BLUE}GPU Information:${RESET}"
    echo "----------------"
    lspci | grep -i 'vga\|3d\|2d'
else
    echo -e "${BOLD_BLUE}GPU Information:${RESET}"
    echo "----------------"
    echo -e "${BOLD_RED}lspci command not available, unable to fetch GPU details.${RESET}"
fi