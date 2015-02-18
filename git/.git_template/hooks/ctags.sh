#!/bin/sh -e

dir="`git rev-parse --git-dir`"
tmp_file=$dir/$$.tags
deps_file=$dir/deps

if [ -f $deps_file ]; then
    deps="`cat $deps_file`"
fi

trap 'rm -f $tmp_file' EXIT

(
git ls-files
if [ -n "$deps" ]; then
    find $deps -type f
fi
) |
ctags \
    -L - \
    -o $tmp_file \

mv $tmp_file $dir/tags

