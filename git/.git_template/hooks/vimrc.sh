#!/bin/sh -e

dir="`git rev-parse --git-dir`"
deps_file=$dir/deps

if [ -f $deps_file ]; then
    deps="`cat $deps_file`"
fi

(
echo set nowrap
for each in $deps; do
    echo set "path+=$each/**"
done
) > .vimrc

