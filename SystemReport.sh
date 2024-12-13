#!/bin/bash

# Print system information
echo "System Information:"
echo "------------------"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Operating System: $(uname -o)"
echo "Distribution: $(lsb_release -ds)"
echo "CPU Architecture: $(uname -m)"
echo ""

# Print CPU information
echo "CPU Information:"
echo "----------------"
echo "CPU Model: $(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d ":" -f 2-)"
echo "CPU Cores: $(cat /proc/cpuinfo | grep "cpu cores" | head -n 1 | cut -d ":" -f 2-)"
echo "CPU Threads: $(cat /proc/cpuinfo | grep "siblings" | head -n 1 | cut -d ":" -f 2-)"