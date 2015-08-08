#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    alias grep='grep --color=auto'
fi
