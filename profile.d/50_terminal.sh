#!/bin/sh -e

# https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos/
# https://github.com/termstandard/colors

if [ $( uname -s ) = Darwin ]; then
    export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/etc/terminfo
fi
