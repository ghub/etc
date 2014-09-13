#!/bin/sh -e

gmock()
{
    LD_LIBRARY_PATH=/usr/lib/llvm-3.4/lib python ~/repo/gmock/gmock.py "$@"
}
