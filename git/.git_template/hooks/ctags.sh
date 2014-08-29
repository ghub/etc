#!/bin/sh -e

dir="`git rev-parse --git-dir`"
tmp_tags=$dir/$$.tags

trap 'rm -f $tmp_tags' EXIT

git ls-files |
ctags \
    -L - \
    -o $tmp_tags \

mv $tmp_tags $dir/tags

