#!/bin/bash
TIMESTAMP=$(date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="usercheck_$TIMESTAMP.txt"
echo ===USERCHECK=== > $OUTFILE
cat /etc/passwd | grep -v nologin | grep -v false >> $OUTFILE
last -n 5 >> $OUTFILE
who >> $OUTFILE
echo "Saved to $OUTFILE" 
