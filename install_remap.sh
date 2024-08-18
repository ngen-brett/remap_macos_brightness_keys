#!/bin/bash

set -e

REMAP_PLIST_URL="https://raw.githubusercontent.com/ngen-brett/remap_macos_brightness_keys/master/remap_macos_brightness_keys.plist"

wget ${REMAP_PLIST_URL} -O ~/Library/LaunchAgents/com.local.KeyRemapping.plist
sudo chmod 0644 ~/Library/LaunchAgents/com.local.KeyRemapping.plist
sudo chown root:wheel ~/Library/LaunchAgents/com.local.KeyRemapping.plist
sudo launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist

exit 0
