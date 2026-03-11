# luci-app-myfm

LuCI application for integrating a lightweight PHP file manager into OpenWrt.

---

## Overview

`luci-app-myfm` adds a simple file manager interface inside the OpenWrt LuCI panel.

LuCI menu location:

Services → My File Manager

---

## Features

- LuCI integration
- PHP based file manager
- Lightweight and fast
- Easy installer scripts
- GitHub auto build workflow
- GitHub automatic release packages

---

## Requirements

OpenWrt version:

OpenWrt 25.x or newer recommended

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
