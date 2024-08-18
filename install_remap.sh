#!/bin/bash

set -e

REMAP_PLIST_URL="https://raw.githubusercontent.com/ngen-brett/remap_macos_brightness_keys/master/remap_macos_brightness_keys.plist"

sudo wget ${REMAP_PLIST_URL} -O /Library/LaunchDaemons/com.local.KeyRemapping.plist
sudo chmod 0644 /Library/LaunchDaemons/com.local.KeyRemapping.plist
sudo chown root:wheel /Library/LaunchDaemons/com.local.KeyRemapping.plist
sudo launchctl bootstrap system /Library/LaunchDaemons/com.local.KeyRemapping.plist

exit 0
