#!/bin/sh -e

dir="`git rev-parse --git-dir`"
tmp=$dir/$$.includes
deps="
.
"

trap 'rm -f $tmp' EXIT

(
for each in $deps; do
    find $each -type f -name "*.h" -o -name "*.moc" | xargs dirname
    find $each -type d -name include
done
) |
grep -Evw "arm|mkspecs|win" |
sed -e "s|^\./||" |
sort -u > $tmp

mv $tmp $dir/includes

