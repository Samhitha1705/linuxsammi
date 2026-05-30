#!/bin/bash
DATE=$(date +%F)

mkdir -p backups

tar -czvf backups/project-$DATE.tar.gz .
