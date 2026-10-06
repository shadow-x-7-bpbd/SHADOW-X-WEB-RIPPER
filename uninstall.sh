#!/usr/bin/env bash
# SHADOW X WEB RIPPER — uninstaller for Termux / Linux
set -e
BIN_DIR="${PREFIX:-/usr/local}/bin"
BIN="$BIN_DIR/shadowxrip"
if [ -f "$BIN" ]; then
  rm -f "$BIN"
  echo '[+] SHADOW X WEB RIPPER removed.'
else
  echo "[!] shadowxrip not found in $BIN_DIR"
fi
