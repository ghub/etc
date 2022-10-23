#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    target=$( brew --prefix )/etc/profile.d/bash_completion.sh
    if [ -f $target ]; then
        . $target
    fi
fi
