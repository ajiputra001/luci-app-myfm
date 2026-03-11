# luci-app-myfm

LuCI application for integrating a lightweight PHP file manager into OpenWrt.

## Overview

`luci-app-myfm` adds a simple file manager page into the OpenWrt LuCI interface.

Menu location:

**Services -> My File Manager**

This repository is prepared for OpenWrt systems using the **apk** package manager.

## Features

- LuCI integration under Services
- Lightweight PHP-based file manager
- Separate dependency installer
- One-command installer from GitHub
- GitHub Actions automatic build
- GitHub Releases automatic package publishing
- Targeted for OpenWrt 25.12.0
- Target architecture: armsr/armv8

## Target Build Source

Official OpenWrt target index:
https://downloads.openwrt.org/releases/25.12.0/targets/armsr/armv8/

Official SDK used by workflow:
https://downloads.openwrt.org/releases/25.12.0/targets/armsr/armv8/openwrt-sdk-25.12.0-armsr-armv8_gcc-14.3.0_musl.Linux-x86_64.tar.zst

## Requirements

Recommended:
- OpenWrt 25.12.0 or newer
- apk package manager

Runtime dependencies:
- luci-base
- uhttpd
- php8
- php8-cgi
- php8-session
- php8-fileinfo
- php8-mbstring

## Quick Install

```sh
wget -qO- https://raw.githubusercontent.com/ajiputra001/luci-app-myfm/main/scripts/install.sh | sh
Required packages:

- luci-base
- uhttpd
- php8
- php8-cgi
- php8-session
- php8-fileinfo
- php8-mbstring

---

## Quick Install

Run on OpenWrt router:

wget -qO- https://raw.githubusercontent.com/ajiputra001/luci-app-myfm/main/scripts/install.sh | sh

---

## Install Dependencies Only

wget -qO- https://raw.githubusercontent.com/ajiputra001/luci-app-myfm/main/scripts/install-deps.sh | sh

---

## Full Installer

wget -qO- https://raw.githubusercontent.com/ajiputra001/luci-app-myfm/main/scripts/install-full.sh | sh

---

## Manual Installation

Download package from Releases page.

Then install manually:

apk add --allow-untrusted luci-app-myfm.apk

---

## Build Locally

chmod +x build.sh
./build.sh

---

## GitHub Actions

This repository includes:

Automatic package build

Automatic GitHub release

---

## Screenshots

Store screenshots inside the screenshots folder.

---

## Contact

Developer: ajiputra

Telegram:
https://t.me/AjiPutra001

---

## License

MIT License
