#!/bin/sh -e

get_status()
{
    status=$?

    if [ $status -ne 0 ]; then
        echo "$(tput setaf 1)$status$(tput sgr0) "
    fi
}

export PS1="\$(get_status)$PS1"
