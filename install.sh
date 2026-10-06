#!/usr/bin/env bash
# SHADOW X WEB RIPPER — one-command setup for Termux / Linux
# Set SHADOW_X_REPO to your GitHub owner/repository before running if needed.
set -e
REPO="${SHADOW_X_REPO:-shadow-x-7-bpbd/SHADOW-X-WEB-RIPPER}"
BIN_DIR="${PREFIX:-/usr/local}/bin"
BIN="$BIN_DIR/shadowxrip"
RAW="https://raw.githubusercontent.com/$REPO/main/shadowxrip"

echo '=============================================='
echo '       SHADOW X WEB RIPPER — setup'
echo '=============================================='
if command -v pkg >/dev/null 2>&1; then
  export DEBIAN_FRONTEND=noninteractive
  echo '[*] Updating Termux packages...'
  pkg update -y </dev/null || true
  pkg upgrade -y -o Dpkg::Options::="--force-confold" </dev/null || true
  echo '[*] Installing Python and curl...'
  pkg install -y python curl </dev/null
  if [ ! -d "$HOME/storage" ]; then termux-setup-storage </dev/null || true; fi
  if [ -d "$HOME/storage/shared" ]; then mkdir -p "$HOME/storage/shared/SHADOW_X" || true; fi
elif ! command -v python3 >/dev/null 2>&1; then
  if command -v apt-get >/dev/null 2>&1; then sudo apt-get update && sudo apt-get install -y python3 curl; else echo '[!] Python 3 and curl are required.'; exit 1; fi
fi
command -v python3 >/dev/null 2>&1 || { echo '[!] Python 3 is still missing.'; exit 1; }
mkdir -p "$BIN_DIR"
echo '[*] Downloading SHADOW X WEB RIPPER...'
curl -fsSL "$RAW" -o "$BIN"
chmod +x "$BIN"
echo '[+] SHADOW X WEB RIPPER installed successfully.'
echo '[+] Run: shadowxrip'
echo '[+] Output folder: SHADOW_X'
