#!/bin/sh -e

dir="`git rev-parse --git-dir`"

rm -f .projections.json
ln -s $dir/projections.json .projections.json

