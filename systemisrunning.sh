#!/bin/bash
uptime=$(uptime | cut -f 4,5 -d " " | cut -f 1 -d ",")
echo "system is running from $uptime"
