#!/bin/bash

echo "running health check"
./health.sh

echo ""
echo "running network check"
./network.sh

echo ""
echo "running website check"
./website.sh

echo ""
echo "running backup"
./backup.sh

