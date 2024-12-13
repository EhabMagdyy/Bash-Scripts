#!/bin/bash

# <servicefile> will call this script and run it at startup
# your script must be execuatble

# it will append the uptime to this file
uptime >> /home/ehab/Documents/02_Bash/systemd/uptime.txt

# 1- Write systemd service file into /lib/systemd/system/<servicename>
# sudo cp systemd/startup_uptimelog.service /lib/systemd/system

# 2- systemctl enable servicefilename -> symlink to /etc/systemd/system/<servicename>
# systemctl enable startup_uptimelog.service

# 3- sudo systemctl daemon-reload

# 4- systemctl start servicefilename

# Notes 
# -> To edit the service file directly:
#      sudo systemctl edit --full <servicefilename>