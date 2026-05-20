#!/bin/bash

system_check() {
    echo "=== SYSTEM ===" > $OUTDIR/system.txt
    id >> $OUTDIR/system.txt
    hostname >> $OUTDIR/system.txt
    uname -a >> $OUTDIR/system.txt
}

network_check() {
    echo "=== NETWORK ===" > $OUTDIR/network.txt
    ip a >> $OUTDIR/network.txt
    ip r >> $OUTDIR/network.txt
    ss -tlnp >> $OUTDIR/network.txt
}

user_check() {
    echo "=== USERS ===" > $OUTDIR/users.txt
    cat /etc/passwd | grep -v nologin | grep -v false >> $OUTDIR/users.txt
    last -n 5 >> $OUTDIR/users.txt
}

port_check() {
    echo "=== PORTS ===" > $OUTDIR/ports.txt
    ss -tlnp >> $OUTDIR/ports.txt
    ss -ulnp >> $OUTDIR/ports.txt
}


TIMESTAMP=$(date +"%Y_%m_%d")
OUTDIR="recon_$TIMESTAMP"
mkdir -p $OUTDIR

echo "Starting recon — output in $OUTDIR"
system_check
network_check
user_check
port_check
echo "Done. Files saved to $OUTDIR/"
