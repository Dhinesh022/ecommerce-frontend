#!/bin/bash
set -e

DEPLOY_DIR="/var/www/html"
TMP_DIR="/tmp/deploy_frontend"

echo "Creating deploy directory if missing..."
mkdir -p $DEPLOY_DIR

echo "Copying build files to $DEPLOY_DIR ..."
rm -rf $DEPLOY_DIR/*
cp -r $TMP_DIR/build/* $DEPLOY_DIR/

chown -R www-data:www-data $DEPLOY_DIR || true

echo "Frontend install step completed successfully."
