#!/bin/bash
echo "=== RECON ===" > recon_output.txt
whoami >> recon_output.txt
id >> recon_output.txt
hostname >> recon_output.txt
uname -a >> recon_output.txt
cat /etc/passwd | grep -v nologin | grep -v false >> recon_output.txt
echo "=== DONE ===" >> recon_output.txt
