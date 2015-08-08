#!/bin/sh -e

VISUAL=vi
export VISUAL

create_link()
{
    (
        cd /usr/local/bin
        if [ ! -e $2 ]; then
            ln -s $@
        fi
    )
}

if [ $( uname -s ) = Darwin ]; then
    create_link mvim vim
    create_link mview view
    create_link mvimdiff vimdiff
    create_link mvimex vimex
    create_link vim vi
fi
