#!/bin/bash
TIMESTAMP=$(date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="FUNCTIONSDEMO_$TIMESTAMP.txt"
echo "===FUNCTIONS===" > $OUTFILE
bob() {
echo  "=== Checking $1 ==="
if ping -c 1 $1  > /dev/null 2>&1; then
echo "$1 alive"
else
    echo "$1 is dead"
fi
}
bob 10.0.2.2
bob 10.0.2.5
bob 10.0.2.15
echo "Saved to $OUTFILE"
