#!/bin/sh -e

gmock()
{
    LD_LIBRARY_PATH=/usr/lib/llvm-3.5/lib python ~/repo/gmock/gmock.py "$@"
}
