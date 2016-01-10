#!/bin/sh -e

if [ $( uname -s ) = Darwin ]; then
    CUDA_DIR=/Developer/NVIDIA/CUDA-7.5
    export DYLD_LIBRARY_PATH=$CUDA_DIR/lib
    prepend_path $CUDA_DIR/bin
fi
