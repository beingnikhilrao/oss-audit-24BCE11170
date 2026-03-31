#!/bin/bash
# Script 1: System Identity Report
# Author: Abhishek
# Registration Number: 24BCE10272

# --- Variables ---
STUDENT_NAME="Abhishek"
SOFTWARE_CHOICE="Python"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
HOME_DIR=$HOME
# Get Linux distribution name from /etc/os-release
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)

# --- Display Output ---
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE"
echo ""
# Display OS license information as per rubric requirement
echo "This OS is covered by the GNU GPL v2 license."
echo "This system is powered by open-source software under GPL-based licensing."
echo "======================================"
