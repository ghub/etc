#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    dir="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    if [ -x "$dir/code" ]; then
        append_path "$dir"
    fi
fi
