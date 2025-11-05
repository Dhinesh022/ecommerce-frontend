#!/bin/bash
set -e

echo "===== AFTER INSTALL STARTED ====="

# Go to frontend app directory
cd /var/www/frontend

# Install dependencies
echo "Installing dependencies..."
sudo npm install --force

# Build the React app
echo "Building the React app..."
sudo npm run build

# Move build files to Nginx root (if Nginx serves from /var/www/html)
echo "Deploying build files to Nginx root..."
sudo rm -rf /var/www/frontend/*
sudo cp -r build/* /var/www/frontend/

# Restart Nginx to apply new build
echo "Restarting Nginx..."
sudo systemctl restart nginx

echo "===== AFTER INSTALL COMPLETED SUCCESSFULLY ====="
