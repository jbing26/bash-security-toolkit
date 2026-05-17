#!/bin/bash
TIMESTAMP=$( date +"%Y-%m-%d_%H-%M-%S")
OUTFILE="syscheck_$TIMESTAMP.txt"
echo "=== SYSCHECK ===" > $OUTFILE
echo $(id) >> $OUTFILE
echo $(hostname) >> $OUTFILE
echo $(uname -r) >> $OUTFILE
cat /etc/passwd | grep -v nologin | grep -v false | wc -l >> $OUTFILE
echo "===DONE===" >> $OUTFILE
echo Saved to $OUTFILE
