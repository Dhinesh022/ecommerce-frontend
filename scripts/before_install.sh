#!/bin/bash
set -e

cd /var/www/E-Commerce-react-node-mysql

echo "Cleaning /var/www/E-Commerce-react-node-mysql except specified folders..."

for item in *; do
  case "$item" in
    music|test)
      echo "Skipping $item"
      ;;
    *)
      echo "Deleting $item"
      sudo rm -rf "$item"
      ;;
  esac
done

echo "Cleanup complete"
