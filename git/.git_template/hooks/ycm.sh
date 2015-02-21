#!/bin/sh -e

dir="`git rev-parse --git-dir`"

rm -f .ycm_extra_conf.py
ln -s $dir/ycm_extra_conf.py .ycm_extra_conf.py

