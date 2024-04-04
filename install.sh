#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Error: You must run this script as root."
  exit 1
fi

source install_location.sh

mkdir -p "$APP_DIR"
cp -r "./gxscreenfilter" "$APP_DIR/"
cp "./GXScreenFilter.desktop" "$DESKTOP_FILE"
cp "./icon.png" "$ICON_FILE"

chmod +x "$APP_DIR/gxscreenfilter"
chmod +x "$DESKTOP_FILE"
chmod +x "$ICON_FILE"

echo "Success: The application has been installed successfully."
