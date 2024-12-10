#!/bin/bash

# Log file to analyze
LOG_FILE="/var/log/nginx/access.log"

# Check for suspicious patterns
echo "Scanning logs for anomalies..."
grep -E "sqlmap|nmap|<script>" $LOG_FILE > suspicious.log

if [ -s suspicious.log ]; then
    echo "Suspicious activities found:"
    cat suspicious.log
else
    echo "No anomalies detected."
fi
