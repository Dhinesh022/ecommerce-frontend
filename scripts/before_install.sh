#!/bin/bash
set -e

cd /var/www/E-Commerce-react-node-mysql

echo "Cleaning /var/www/E-Commerce-react-node-mysql except specified folders (music, test)..."

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
