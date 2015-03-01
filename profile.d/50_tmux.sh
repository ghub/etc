#!/bin/sh -e

_tmux.sh()
{
    local cur prev words cword
    _init_completion || return

    COMPREPLY=( $( compgen -W "$( \
        find ~/etc*/tmux.d -type f |
        xargs -n1 basename |
        sed -e "s/\.tmux$//" |
        sort -u \
        )" -- "$cur" ) )
} &&
complete -F _tmux.sh tmux.sh
