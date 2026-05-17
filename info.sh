#!/bin/bash
NAME=$1
if [ -z "$NAME" ]; then
echo "usage: ./info.sh <your-name>"
exit 1 
fi
echo "Hello $NAME, you are running on $(hostname) at $(date)"
