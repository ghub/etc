#!/bin/sh -e

append_path()
{
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

prepend_path()
{
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1${PATH:+":$PATH"}"
    fi
}

append_terminfo_dirs()
{
    if [ -d "$1" ] && [[ ":$TERMINFO_DIRS:" != *":$1:"* ]]; then
        TERMINFO_DIRS="${TERMINFO_DIRS:+"$TERMINFO_DIRS:"}$1"
    fi
}
