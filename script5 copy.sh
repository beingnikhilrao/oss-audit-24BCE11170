#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Abhishek
# Registration Number: 24BCE10272

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get system info
USER_NAME=$(whoami)
DATE=$(date '+%d %B %Y')

# Output file with custom filename as per rubric requirement
OUTPUT="manifesto_Abhishek.txt"

# Generate manifesto with composed paragraph (not just list) as per rubric
echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "By Abhishek (24BCE10272) on $DATE" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
# Compose a full paragraph using user input as per rubric requirement
echo "I believe in the power of open-source software and its ability to transform lives. Every day, I rely on $TOOL, which embodies the true meaning of $FREEDOM in the digital world. This freedom inspires me to contribute back to the community by building $BUILD and sharing it freely with everyone. Open source is not just about code; it's about collaboration, transparency, and the belief that knowledge should be accessible to all, regardless of their background or resources." >> $OUTPUT
echo "" >> $OUTPUT
echo "This is my commitment to the open-source community and the values it represents." >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
