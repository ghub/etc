#!/bin/sh -e

# https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos/
# https://github.com/termstandard/colors

if [ $( uname -s ) = Darwin ]; then
    append_terminfo_dirs $HOME/etc/terminfo
    export TERMINFO_DIRS
fi
