#!/bin/bash
TIMESTAMP=$( date +"%Y_%m_%d-%H_%M_%S")
OUTFILE="pingsweep2_$TIMESTAMP.TXT"

if [ ! -f "targets.txt" ]; then
    echo "targets.txt not found"
    exit 1
fi

echo "===PINGSWEEP===" > $OUTFILE
while read IP; do
	for i in $(seq 1 254); do
if ping -c 1 $IP.$i> /dev/null 2>&1; then
echo "$IP.$i is alive" | tee -a $OUTFILE
fi
done
done < targets.txt
echo "Saved to $OUTFILE" 
