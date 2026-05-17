#!/bin/bash
TIMESTAMP=$(date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="syscheck2_$TIMESTAMP.txt"
echo "===SYSCHECK2===" > $OUTFILE
id >> $OUTFILE
hostname >> $OUTFILE
uname -r >> $OUTFILE
cat /etc/passwd | grep -v nologin | grep -v false | wc -l >> $OUTFILE
echo "saved in $OUTFILE"


