#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Abhishek
# Registration Number: 24BCE10272

# Important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "  Permissions : $PERMS"
        echo "  Size        : $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Check Python config location
echo ""
echo "Python Configuration Check"
echo "======================================"

PYTHON_PATH=$(which python3)

if [ -f "$PYTHON_PATH" ]; then
    PERM=$(ls -l $PYTHON_PATH | awk '{print $1, $3, $4}')
    echo "Python Path : $PYTHON_PATH"
    echo "Permissions : $PERM"
else
    echo "Python is not installed"
fi

# Check Python configuration directory as per rubric requirement
echo ""
if [ -d "/usr/lib/python3" ]; then
    echo "Python configuration directory exists:"
    ls -ld /usr/lib/python3
else
    echo "Python configuration directory /usr/lib/python3 not found"
fi
