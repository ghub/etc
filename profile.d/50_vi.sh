#!/bin/sh -e

VISUAL=vi
export VISUAL

if [ `uname -s` = "Darwin" ]; then
    alias vi='mvim -v'
fi
