#!/bin/sh
set -e

echo "Updating package index..."
apk update

echo "Installing LuCI and web server..."
apk add luci-base uhttpd

echo "Installing PHP dependencies..."
apk add php8 php8-cgi php8-session php8-fileinfo php8-mbstring

echo "Restarting uhttpd..."
/etc/init.d/uhttpd restart || true

echo "Dependencies installed successfully."
