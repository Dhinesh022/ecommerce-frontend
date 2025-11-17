#!/bin/bash
set -e

cd /var/www/frontned

echo "Cleaning /var/www/frontend"

# Include hidden files (like .gitignore, .env, etc.)
shopt -s dotglob

for item in *; do
  case "$item" in
    manoj|ram|sample.txt)
      echo "Skipping $item"
      ;;
    *)
      echo "Deleting $item"
      sudo rm -rf "$item"
      ;;
  esac
done

echo "Cleanup complete"
