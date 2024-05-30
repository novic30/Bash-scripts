#!/usr/bin/env bash

sleep 50s

SUnum=$(softwareupdate -l | grep Label | wc -l)

if [ $SUnum -eq 0 ]; then
    true # or simply use a comment like: # No updates available, nothing to do here
else
	open -a iTerm
    osascript -e 'tell application "iTerm" to tell current window to create tab with default profile'
    osascript -e 'tell application "iTerm" to tell current session of current window to write text "SOFTWARE UPDATE MANNNNNN"'
#    open ../../../Applications/iTerm.app
 #   echo "SOFTWARE UPDATE MANNNNNN"
fi
