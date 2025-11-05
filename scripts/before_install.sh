#!/bin/bash
set -e

echo "===== BEFORE INSTALL STARTED ====="

# Create directory if not exists
sudo mkdir -p /var/www/frontend

# Clean old build files only
echo "Cleaning up old frontend files..."
sudo rm -rf /var/www/frontend/*

echo "===== BEFORE INSTALL COMPLETED SUCCESSFULLY ====="
