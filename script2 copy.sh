#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Abhishek
# Registration Number: 24BCE10272

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if package is installed
if dpkg -l | grep -w $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "FOSS Philosophy Note:"
echo "--------------------------------"

# Case statement for package philosophy (as per rubric requirement)
case $PACKAGE in
    python3)
        echo "Python: A community-driven language focused on simplicity and readability."
        ;;
    httpd)
        echo "Apache (httpd): The web server that helped build the open internet."
        ;;
    mysql)
        echo "MySQL: Open-source database powering millions of applications worldwide."
        ;;
    git)
        echo "Git: A distributed version control system built for open collaboration."
        ;;
    *)
        echo "Unknown package. Still part of the open-source ecosystem."
        ;;
esac
