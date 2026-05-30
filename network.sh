#!/bin/bash

echo "---NETWORK CHECK---"

echo ""

echo "pingpong Google"

ping -c 4 google.com

echo ""

echo "DNS Lookup"

nslookup google.com

echo ""
echo "Open Ports"

ss -tuln
