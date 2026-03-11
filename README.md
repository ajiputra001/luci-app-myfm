# luci-app-myfm

LuCI app + web file manager untuk OpenWrt 25.12+ berbasis apk.

## Author
by ajiputra

## Fitur
- Menu LuCI di Services > My File Manager
- File manager berbasis PHP
- Installer untuk sistem apk

## Install cepat

```sh
wget -qO- https://raw.githubusercontent.com/ajiputra001/luci-app-myfm/main/install.sh | sh
chmod +x build.sh
./build.sh
apk add --allow-untrusted /tmp/luci-app-myfm.apk

---

# 13. Buat `LICENSE`

```bash
cat > ~/projects/luci-app-myfm/LICENSE <<'EOF'
MIT License

Copyright (c) 2026 ajiputra

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
OR OTHER DEALINGS IN THE SOFTWARE.
