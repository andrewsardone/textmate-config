#!/bin/sh

git submodule update --init
git submodule foreach git checkout master
git submodule foreach git reset --hard
git submodule foreach git pull
osascript -e 'tell app "TextMate" to reload bundles'
