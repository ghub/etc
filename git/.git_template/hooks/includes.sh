#!/bin/sh -e

dir="`git rev-parse --git-dir`"
tmp_file=$dir/$$.includes
deps_file=$dir/deps

if [ -f $deps_file ]; then
    deps="`cat $deps_file`"
fi

deps=". $deps"

trap 'rm -f $tmp_file' EXIT

(
find $deps -type f -name "*.h" -o -name "*.moc" | xargs dirname
find $deps -type d -name include
) |
grep -Evw "arm|mkspecs|win" |
sed -e "s|^\./||" |
sort -u > $tmp_file

mv $tmp_file $dir/includes

