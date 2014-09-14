#!/bin/sh -e

src="
bash
ctags
git
pentadactyl
readline
tmux
urxvt
vim
"

for each in $src; do
    stow $each
done
