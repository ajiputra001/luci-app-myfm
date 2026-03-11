#!/bin/sh
set -e

REPO="ajiputra001/luci-app-myfm"

wget -qO- \
https://raw.githubusercontent.com/${REPO}/main/scripts/install.sh | sh
