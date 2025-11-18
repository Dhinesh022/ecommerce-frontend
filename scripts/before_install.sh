#!/bin/bash
set -e

cd /var/www/frontend

shopt -s dotglob  # include hidden files in *

for item in *; do
  if [ "$item" = ".env" ]; then
    echo "Skipping .env"
  else
    echo "Deleting $item"
    rm -rf "$item"
  fi
done

shopt -u dotglob

echo "Cleanup done. .env is safe."
