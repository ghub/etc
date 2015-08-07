#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    target=$( brew --prefix )/etc/bash_completion
    if [ -f $target ]; then
        . $target
    fi
fi
