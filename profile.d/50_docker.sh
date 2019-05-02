#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    for each in /Applications/Docker.app/Contents/Resources/etc/*.bash-completion; do
        [ -f "$each" ] || continue
        . $each
    done
fi
