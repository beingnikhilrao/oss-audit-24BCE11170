#!/bin/bash
# Script 4: Log File Analyzer
# Author: Abhishek
# Registration Number: 24BCE10272

# Input arguments
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty with retry logic (do-while style as per rubric)
RETRY_COUNT=0
while [ ! -s "$LOGFILE" ] && [ $RETRY_COUNT -lt 3 ]; do
    echo "File is empty. Retry attempt $((RETRY_COUNT + 1))/3..."
    sleep 1
    RETRY_COUNT=$((RETRY_COUNT + 1))
done

# If still empty after retries, exit
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty after retries. Please provide a valid log file."
    exit 1
fi

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------------"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines using tail as per rubric requirement
echo ""
echo "Last 5 matching lines:"
# Use tail to show the most recent 5 error lines
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
