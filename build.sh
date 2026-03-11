#!/usr/bin/env bash
set -e

PKG_NAME="luci-app-myfm"
SDK_DIR="${HOME}/openwrt-sdk"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[1/5] Masuk ke SDK"
cd "$SDK_DIR"

echo "[2/5] Salin package"
rm -rf "package/${PKG_NAME}"
mkdir -p "package/${PKG_NAME}"
cp -r "${REPO_DIR}/package/${PKG_NAME}/"* "package/${PKG_NAME}/"

echo "[3/5] Update feeds"
./scripts/feeds update -a
./scripts/feeds install -a

echo "[4/5] Build package"
make defconfig
make "package/${PKG_NAME}/compile" V=s

echo "[5/5] Cari hasil build"
find bin/ -type f | grep "${PKG_NAME}" || true
