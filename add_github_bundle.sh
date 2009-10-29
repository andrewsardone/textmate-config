#!/bin/sh

[[ -n "$1" ]] || { echo "Usage: $0 \"Bundle Name\" repository"; exit 0 ; }

git submodule add $2 Pristine\ Copy/Bundles/"$1".tmbundle
osascript -e 'tell app "TextMate" to reload bundles'
