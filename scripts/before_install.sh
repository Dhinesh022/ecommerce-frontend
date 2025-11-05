#!/bin/bash
sudo apt update

set -e

# Navigate to the destination directory
cd /var/www/frontend

# Remove old files
rm -rf *
#rm -f .gitignore
