#!/bin/bash
TIMESTAMP=$(date +"%Y_%m_%d")
OUTDIR="recon_$TIMESTAMP"
mkdir -p $OUTDIR
echo "Starting recon - output in $OUTDIR"
echo "===SYSTEM===" > $OUTDIR/system.txt
id >> $OUTDIR/system.txt
hostname >> $OUTDIR/system.txt
uname -a >> $OUTDIR/system.txt

echo "=== NETWORK ===" > $OUTDIR/network.txt
ip a >> $OUTDIR/network.txt
ip r >> $OUTDIR/network.txt
ss -tlnp >> $OUTDIR/network.txt

echo "=== USERS ===" > $OUTDIR/users.txt
cat /etc/passwd | grep -v nologin | grep -v false >> $OUTDIR/users.txt
last -n 5 >> $OUTDIR/users.txt

echo "Done. Files saved to $OUTDIR/"
