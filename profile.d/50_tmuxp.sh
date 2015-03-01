#!/bin/sh -e

hash tmuxp.bash 2>/dev/null && . tmuxp.bash

_tmuxp.sh()
{
    local cur prev words cword
    _init_completion || return

    COMPREPLY=( $( compgen -W "$( \
        find ~/etc*/tmuxp.d -type f |
        xargs -n1 basename |
        sed -e "s/\.yaml$//" |
        sort -u \
        )" -- "$cur" ) )
} &&
complete -F _tmuxp.sh tmuxp.sh
