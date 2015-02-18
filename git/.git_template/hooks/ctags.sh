#!/bin/sh -e

dir="`git rev-parse --git-dir`"
tmp=$dir/$$.tags

trap 'rm -f $tmp' EXIT

git ls-files |
ctags \
    -L - \
    -o $tmp \

mv $tmp $dir/tags

