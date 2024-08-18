#!/bin/bash

set -e

sudo launchctl unload /Library/LaunchDaemons/com.local.KeyRemapping.plist
sudo rm /Library/LaunchDaemons/com.local.KeyRemapping.plist

exit 0
