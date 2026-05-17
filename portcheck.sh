#!/bin/bash
TIMESTAMP=$( date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="portcheck_$TIMESTAMP.txt"
echo ===PORTCHECK=== > $OUTFILE
ss -tlnp >> $OUTFILE
ss -ulnp >> $OUTFILE
echo "save to $OUTFILE"
