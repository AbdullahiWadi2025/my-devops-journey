#!/bin/bash

directory="$1"
log_file="changes.log"

echo "Monitoring directory: $directory"
echo "Logging changes to: $log_file"
echo "Press Ctrl+C to stop"
echo ""

while true
do
    inotifywait -e create -e modify -e delete "$directory" >/dev/null 2>&1

    echo "$(date): Change detected in $directory" >> "$log_file"
done
