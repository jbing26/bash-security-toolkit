#!/bin/bash
TIMESTAMP=$(date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="pingsweep_$TIMESTAMP.txt"
echo ===PING=== > $OUTFILE
for i in $(seq 1 254); do
if ping -c 1 10.0.2.$i > /dev/null 2>&1; then
    echo "10.0.2.$i is alive" | tee -a $OUTFILE
fi
done
echo "Saved to $OUTFILE"
