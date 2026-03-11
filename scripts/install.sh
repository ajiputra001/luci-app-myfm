#!/bin/sh
set -e

PKG="luci-app-myfm"
REPO="ajiputra001/luci-app-myfm"

RAW_BASE="https://raw.githubusercontent.com/${REPO}/main/scripts"

echo "Installing dependencies..."
wget -qO- "${RAW_BASE}/install-deps.sh" | sh

echo "Downloading package..."
wget -O /tmp/${PKG}.apk \
https://github.com/${REPO}/releases/latest/download/${PKG}.apk

echo "Installing package..."
apk add --allow-untrusted /tmp/${PKG}.apk

echo "Restarting uhttpd..."
/etc/init.d/uhttpd restart || true

LANIP="$(uci get network.lan.ipaddr 2>/dev/null || echo 192.168.1.1)"

echo ""
echo "Installation completed."
echo "Open:"
echo "http://${LANIP}/cgi-bin/luci/admin/services/myfm"
