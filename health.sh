#!/bin/bash

echo "----SERVER HEALTH REPORT----"

echo ""

echo "Hostname:"
hostname

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Disk Usage:"
df -h

echo ""
echo "CPU Load:"
uptime


echo ""
echo "Top Processes:"
ps aux --sort=-%mem | head

