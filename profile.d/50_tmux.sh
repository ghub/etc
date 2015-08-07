#!/bin/sh -e

_tmux.sh()
{
    local cur prev words cword

    if [ $( uname -s ) = Darwin ]; then
        _get_comp_words_by_ref cur prev words cword || return
    else
        _init_completion || return
    fi

    COMPREPLY=( $( compgen -W "$( \
        find ~/etc*/tmux.d -type f |
        xargs -n1 basename |
        sed -e "s/\.tmux$//" |
        sort -u \
        )" -- "$cur" ) )
} &&
complete -F _tmux.sh tmux.sh
