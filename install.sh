#!/bin/sh
set -e

PKG="luci-app-myfm"
VERSION="v1.0.0"
REPO="ajiputra001/luci-app-myfm"
URL="https://github.com/${REPO}/releases/download/${VERSION}/${PKG}.apk"

echo "[1/5] Update index package"
apk update

echo "[2/5] Install dependency"
apk add luci-base uhttpd php8 php8-cgi php8-session php8-fileinfo php8-mbstring

echo "[3/5] Download package"
wget -O "/tmp/${PKG}.apk" "$URL"

echo "[4/5] Install package"
apk add --allow-untrusted "/tmp/${PKG}.apk"

echo "[5/5] Restart uhttpd"
/etc/init.d/uhttpd restart

LANIP="$(uci get network.lan.ipaddr 2>/dev/null || echo 192.168.1.1)"
echo "Selesai"
echo "LuCI:   http://${LANIP}/cgi-bin/luci/admin/services/myfm"
echo "Direct: http://${LANIP}/myfm/"
