#!/usr/bin/env osascript
--Running under AppleScript 2.8, MacOS 13.0.1
--v.2 - Wait for slider to be available.
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

Displays_Set_Brightness(0.9)

on Displays_Set_Brightness(brightnessValue)
    do shell script "open x-apple.systempreferences:com.apple.Displays-Settings.extension"
    tell application "System Events"
        tell application process "System Settings"
            tell window 1
                repeat until UI element 3 of UI element 2 of scroll area 2 of group 1 of group 2 of splitter group 1 of group 1 exists
                    delay 0
                end repeat
                tell UI element 3 of UI element 2 of scroll area 2 of group 1 of group 2 of splitter group 1 of group 1
                    set value to brightnessValue
                end tell
            end tell
        end tell
    end tell
end Displays_Set_Brightness