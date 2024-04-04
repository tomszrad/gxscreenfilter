#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Error: You must run this script as root."
  exit 1
fi

source install_location.sh

rm -rf "$APP_DIR"
rm "$DESKTOP_FILE"
rm "$ICON_FILE"

echo "Success: All changes made by the installation script have been reverted."
