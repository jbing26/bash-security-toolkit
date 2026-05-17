#!/bin/bash
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTFILE="netcheck_$TIMESTAMP.txt"
echo "===NETCHECK==" > $OUTFILE
ip a >> $OUTFILE
ip r >> $OUTFILE
ss -tlnp >> $OUTFILE
echo "Saved to $OUTFILE"
