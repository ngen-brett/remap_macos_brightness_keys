#!/bin/bash

set -e

sudo launchctl unload ~/Library/LaunchAgents/com.local.KeyRemapping.plist
sudo rm ~/Library/LaunchAgents/com.local.KeyRemapping.plist

exit 0
