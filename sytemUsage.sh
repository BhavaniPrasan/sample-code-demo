#!/bin/sh
if [ -f usage.txt ]; then
	rm -rf usage.txt
	echo "deleted"
fi
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' >> usage.txt
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}' >> usage.txt
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' >> usage.txt
w >> usage.txt
#ifstat -i eth0 -q 1 1 >> usage.sh
