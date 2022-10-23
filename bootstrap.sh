#!/bin/sh -e

src="
bash
cgdb
ctags
gdb
git
readline
tmux
urxvt
vim
"

for each in $src; do
    stow -R --dotfiles $each
done
