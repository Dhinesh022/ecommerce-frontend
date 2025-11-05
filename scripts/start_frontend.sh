#!/bin/bash
set -e

echo "Starting frontend via Nginx..."
if systemctl list-units --full -all | grep -Fq "nginx.service"; then
  systemctl reload nginx || systemctl restart nginx
else
  echo "Nginx not found. Please install and configure it to serve /var/www/html."
fi

echo "Frontend start step completed."
