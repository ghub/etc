#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
fi
