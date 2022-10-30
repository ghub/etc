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

append_terminfo_dir()
{
    if [ -d "$1" ] && [[ ":$TERMINFO_DIR:" != *":$1:"* ]]; then
        TERMINFO_DIR="${TERMINFO_DIR:+"$TERMINFO_DIR:"}$1"
    fi
}
