#!/usr/bin/env osascript

--  # Start with System Preferences closed.

if running of application "System Preferences" then
    try
        tell application "System Preferences" to quit
    on error
        do shell script "killall 'System Preferences'"
    end try
end if
repeat while running of application "System Preferences" is true
    delay 0.1
end repeat

--  # Open System Preferences to the target pane.

tell application "System Preferences" to ¬
    reveal anchor "displaysDisplayTab" of ¬
        pane id "com.apple.preference.displays"

--  # Change the Brightness: slider.

tell application "System Events" to ¬
    tell value indicator 1 of ¬
        slider 1 of ¬
        group 1 of ¬
        tab group 1 of ¬
        window 1 of ¬
        application process "System Preferences" to ¬
        set its value to 0

delay 2

tell application "System Events" to ¬
    tell value indicator 1 of ¬
        slider 1 of ¬
        group 1 of ¬
        tab group 1 of ¬
        window 1 of ¬
        application process "System Preferences" to ¬
        set its value to 0.75

--  # Close System Preferences.

quit application "System Preferences"
