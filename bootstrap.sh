#!/bin/sh -e

src="
bash
cgdb
ctags
git
pentadactyl
readline
tmux
urxvt
vim
vimperator
"

for each in $src; do
    stow $each
done
